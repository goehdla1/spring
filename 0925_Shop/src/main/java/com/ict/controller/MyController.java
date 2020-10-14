package com.ict.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ict.db.CVO;
import com.ict.db.DAO;
import com.ict.db.MVO;
import com.ict.db.VO;

@Controller
public class MyController {

	private DAO dao;

	@Autowired
	public void setDao(DAO dao) {
		this.dao = dao;
	}

	@RequestMapping("list.do")
	public ModelAndView ListCommand(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("product_list");
		try {
			String category = request.getParameter("category");
			if (category == null || category == "") {
				category = "ele002";
			}
			List<VO> list = dao.getList(category);
			mv.addObject("list", list);
		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}

	// 로그인 화면가기
	@RequestMapping("login.do")
	public ModelAndView LoginCommand() {
		return new ModelAndView("login");
	}

	// 로그인
	@RequestMapping("login_ok.do")
	public ModelAndView LoginOKCommand(MVO m_vo, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		try {
			// 로그인 처리
			MVO mvo = dao.getLogin(m_vo);
			if (mvo != null) {
				session.setAttribute("mvo", mvo);
				session.setAttribute("login", "ok");
				// 만약 로그인이 관리자인자 고객인지를 if문을 통해서 설정한다.
				if (mvo.getM_id().equals("admin")) {
					session.setAttribute("admin", "ok");
					// 관리자면 admin으로 가라.
					mv.setViewName("redirect:admin.do");
					return mv;
				}
				// 고객이면 list 로 가라.
				mv.setViewName("redirect:list.do");
			} else {
				// 만약 로그인 실패시 error 표시해주기. (login_error.jsp)
				mv.setViewName("login_error");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}

	// 로그아웃
	@RequestMapping("logout.do")
	public ModelAndView logoutCommand(HttpSession session) {
		// invalidate 정보 삭제
		session.invalidate();
		return new ModelAndView("redirect:list.do");
	}

	// 원글
	@RequestMapping("content.do")
	public ModelAndView ContentCommand(@RequestParam("idx") String idx) {
		ModelAndView mv = new ModelAndView("product_content");
		try {
			VO vo = dao.getOneList(idx);
			mv.addObject("vo", vo);

		} catch (Exception e) {
			System.out.println(e);
		}

		return mv;
	}

	// 카트리스트 가기.
	@RequestMapping("viewcart.do")
	public ModelAndView viewCartCommand(@RequestParam("m_id") String m_id) {
		ModelAndView mv = new ModelAndView("viewcart");
		try {
			List<CVO> cartList = dao.getCartList(m_id);
			mv.addObject("cartList", cartList);
		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}

	// 장바구니에 담기
	@RequestMapping("addcart.do")
	public ModelAndView addCartCommand(@RequestParam("idx") String idx, @RequestParam("id") String id) {
		ModelAndView mv = new ModelAndView("redirect:content.do?idx=" + idx);
		try {
			// idx를 이용해서 제품 정보 가져오기
			VO vo = dao.getOneList(idx);

			// m_id와 제품번호 가지고 카트 정보 가져오기
			CVO cvo = dao.getCartList(id, vo.getP_num());

			// 해당 제품이 카트 정보에 있는지 확인
			if (cvo == null) {
				// 카트에 해당 제품이 없으므로 제품을 카트에 추가 하자
				CVO c_vo = new CVO();
				c_vo.setP_num(vo.getP_num());
				c_vo.setP_price(String.valueOf(vo.getP_price()));
				c_vo.setP_name(vo.getP_name());
				c_vo.setId(id);
				dao.getCartInsert(c_vo);
			} else {
				// 카트에 해당 제품이 있으므로 제품의 갯수를 1증가 하자
				dao.getCartUpdate(cvo);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}

	// 삭제
	@RequestMapping("delproduct.do")
	public ModelAndView delProductCommand(CVO cvo) {
		ModelAndView mv = new ModelAndView("redirect:viewcart.do?m_id=" + cvo.getId());
		try {
			dao.getCartDel(cvo);
		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}

	// 수정
	@RequestMapping("editcount.do")
	public ModelAndView editCountCommand(CVO cvo) {
		ModelAndView mv = new ModelAndView("redirect:viewcart.do?m_id=" + cvo.getId());
		try {
			dao.getCartEdit(cvo);
		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}

	// 관리자페이지 이동
	@RequestMapping("admin.do")
	public ModelAndView adminCommand() {
		return new ModelAndView("admin");
	}

	@RequestMapping(value = "productadd", method = RequestMethod.POST)
	public ModelAndView productAdd(VO vo, HttpSession session) {
		ModelAndView mv = new ModelAndView("redirect:list.do?category=" + vo.getCategory());
		try {
			String path = session.getServletContext().getRealPath("/resources/images");
			MultipartFile s_file = vo.getS_file();
			MultipartFile l_file = vo.getL_file();
			
			// 상품이미지는 무조건 넣어주는 것이 맞으므로 없는 경우를 생각하지 않음
			vo.setP_image_s(s_file.getOriginalFilename());
			vo.setP_image_l(l_file.getOriginalFilename());
			int result = dao.getProduct_Insert(vo);
			if(result>0) {
				s_file.transferTo(new File(path+"/"+vo.getP_image_s()));
				l_file.transferTo(new File(path+"/"+vo.getP_image_l()));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}
}
