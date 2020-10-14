package com.ict.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ict.db.DAO;
import com.ict.db.VO;
import com.ict.model.Paging;

@Controller
public class MyController {
	@Autowired
	private DAO dao;
	@Autowired
	private Paging paging;

	public void setDao(DAO dao) {
		this.dao = dao;
	}

	public void setPaging(Paging paging) {
		this.paging = paging;
	}

	String cPage;

	// 리스트
	@RequestMapping("list.do")
	public ModelAndView listCommand(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("list");
		// 전체 게시물의 수 => 전체 페이지의 수 구하기 위한 과정
		int count = dao.getTotalCount();
		paging.setTotalRecord(count);

		// 전체 페이지의 수
		if (paging.getTotalRecord() <= paging.getNumPerPage()) {
			paging.setTotalPage(1);
		} else {
			paging.setTotalPage(paging.getTotalRecord() / paging.getNumPerPage());
			if (paging.getTotalRecord() % paging.getNumPerPage() != 0) {
				paging.setTotalPage(paging.getTotalPage() + 1);
			}
		}

		// 현재페이지 구하기
		cPage = request.getParameter("cPage");
		// index.jsp에서 들어오면 cPage의 값은 무조건 null 이다.
		// 나머지는 list에 넘어올때 무조건 cPage를 넣어줘야 한다.
		if (cPage == null) {
			paging.setNowPage(1);
		} else {
			paging.setNowPage(Integer.parseInt(cPage));
		}

		// 시작번호, 끝번호를 구한자.
		paging.setBegin((paging.getNowPage() - 1) * paging.getNumPerPage() + 1);
		paging.setEnd((paging.getBegin() - 1) + paging.getNumPerPage());

		List<VO> list = dao.getList(paging.getBegin(), paging.getEnd());

		// 시작블록, 끝블록을 구하자
		paging.setBeginBlock(
				(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
		paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);

		// 주의사항 : endBlock이 totalPage보다 클수이다.
		if (paging.getEndBlock() > paging.getTotalPage()) {
			paging.setEndBlock(paging.getTotalPage());
		}

		mv.addObject("list", list);
		mv.addObject("paging", paging);
		return mv;
	}

	// 글쓰는 곳
	@RequestMapping("write.do")
	public ModelAndView WriteCommand() {
		ModelAndView mv = new ModelAndView("write");
		return mv;
	}

	// 글쓰기
	@RequestMapping(value = "write_ok.do", method = RequestMethod.POST)
	public ModelAndView writeOKCommand(VO vo, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("redirect:list.do");
		try {
			String path = request.getSession().getServletContext().getRealPath("/resources/upload");
			MultipartFile file = vo.getFile();

			if (file.isEmpty()) {
				vo.setFile_name("");
			} else {
				vo.setFile_name(vo.getFile().getOriginalFilename());
			}
			int result = dao.getInsert(vo);
			if (result > 0) {
				file.transferTo(new File(path + "/" + vo.getFile_name()));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}

	// 원글보기
	@RequestMapping("onelist.do")
	public ModelAndView OneListCommand(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("onelist");
		String idx = request.getParameter("idx");
		String cPage = request.getParameter("cPage");

		// 조회수 업데이트
		dao.getHit(idx);

		// 상세보기
		VO vo = dao.getOneList(idx);

		// session에 담기
		request.getSession().setAttribute("vo", vo);

		mv.addObject("idx", idx);
		mv.addObject("cPage", cPage);

		return mv;
	}

	// 다운로드
	@RequestMapping("down.do")
	public void downCommand(HttpServletRequest request, HttpServletResponse response) {
		try {
			String file_name = request.getParameter("file_name");
			String path = request.getSession().getServletContext().getRealPath("/resources/upload/" + file_name);

			// 브라우저 설정
			response.setContentType("application/x-msdownload");
			response.setHeader("Content-Disposition", "attachment; filename=" + URLEncoder.encode(file_name, "utf-8"));

			// 실제 저장
			File file = new File(new String(path.getBytes()));
			FileInputStream fis = new FileInputStream(file);
			BufferedInputStream in = new BufferedInputStream(fis);
			OutputStream out = response.getOutputStream();

			FileCopyUtils.copy(in, out);

		} catch (Exception e) {
			// TODO: handle exception
		}

	}

	// 업데이트 이동
	@RequestMapping("update.do")
	public ModelAndView UpdateCommand(@ModelAttribute("cPage") String cPage) {
		return new ModelAndView("update");
	}

	// 업데이트
	@RequestMapping(value = "update_ok.do", method = RequestMethod.POST)
	public ModelAndView updateOKCommand(VO vo, HttpServletRequest request) {
		String cPage = request.getParameter("cPage");
		String f_name = request.getParameter("f_name");

		String idx = request.getParameter("idx");
		vo.setIdx(idx);

		ModelAndView mv = new ModelAndView("redirect:onelist.do?cPage=" + cPage + "&b_idx=" + vo.getIdx());
		try {
			String path = request.getSession().getServletContext().getRealPath("/resources/upload");

			MultipartFile file = vo.getFile();
			if (file.isEmpty()) {
				vo.setFile_name(f_name);
			} else {
				vo.setFile_name(vo.getFile().getOriginalFilename());
			}

			int result = dao.getUpdate(vo);
			if (result > 0) {
				file.transferTo(new File(path + "/" + vo.getFile_name()));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return mv;
	}
	// 삭제 페이지

	@RequestMapping("delete.do")
	public ModelAndView DeleteCommand() {
		ModelAndView mv = new ModelAndView("delete");
		return mv;
	}

	// 삭제
	@RequestMapping("delete_ok.do")
	public ModelAndView DeleteOKCommand(@RequestParam("cPage")String cPage, HttpSession session ) {
		ModelAndView mv = new ModelAndView("redirect:list.do?cPage="+cPage);
		VO vo = (VO)session.getAttribute("vo");
		dao.getDelete(vo.getIdx());
		
		return mv;
		
	}
	
	// 댓글 창 이동
	@RequestMapping("ans_write.do")
	public ModelAndView Ans_WriteCommand(@ModelAttribute("cPage")String cPage) {
		return new ModelAndView("ans_write");
	}
	
	// 댓글 쓰기
	@RequestMapping(value = "ans_write_ok.do" , method = RequestMethod.POST)
	public ModelAndView Ans_WriteOKCommand(VO vo , HttpSession session, @ModelAttribute("cPage")String cPage) {
		ModelAndView mv = new ModelAndView("redirect:list.do");
		try {
			int lev = Integer.parseInt(vo.getLev());
			int step = Integer.parseInt(vo.getStep());
			int groups = Integer.parseInt(vo.getGroups());
			
			step ++;
			lev ++;
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
