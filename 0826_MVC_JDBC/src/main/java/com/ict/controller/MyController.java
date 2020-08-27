package com.ict.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ict.db.DAO;
import com.ict.db.VO;

@Controller
public class MyController {
	@Autowired
	private DAO dao;

	public void setDao(DAO dao) {
		this.dao = dao;
	}
	
	// 리스트
	@RequestMapping(value = "list.do" , method = RequestMethod.GET)
	public ModelAndView listCommand() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("list");
		// jdbc 에서는 select 문 무조건 List(VO) 가 반환형이다.
		List<VO> list = dao.getList();
		mv.addObject("list",list);
		return mv;
	}
	
	// 글 작성 화면으로 이동.
	@RequestMapping("write.do")
	public ModelAndView writeCommand() {
		// 생성자에 바로 넣을 수 있다. 왜? mv에 담을것이 없기 떄문에.
		return new ModelAndView("write");
	}
	
	// 글쓰기
	@RequestMapping(value = "write_ok.do", method = RequestMethod.POST)
	public ModelAndView wirteOKCommand(VO vo) {
		ModelAndView mv;
		int result = dao.getInsert(vo);
		if (result>0) {
			// 리다이렉트하기.
			 mv = new ModelAndView("redirect:list.do");
		}else {
			// 리다이렉트하기.
			 mv = new ModelAndView("redirect:write.do");
		}
		
		return mv;
	}
	
	@RequestMapping(value = "onelist.do" , method = RequestMethod.GET)
	public ModelAndView oneListCommand(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("onelist");
		String idx = request.getParameter("idx");
		// jdbc 에서는 select 문 무조건 List(VO) 가 반환형이다.
		// 그런데 기본키로 검색을 하면 결과가 하나로 나온다.
		List<VO> list = dao.getOneList(idx);
		VO vo = list.get(0);
		
		// 수정과 삭제를 위해서 session에 담자
		request.getSession().setAttribute("vo", vo);
		
		return mv;
	}
	
	// 수정 화면으로 이동.
	@RequestMapping(value = "update.do" , method = RequestMethod.POST)
	public ModelAndView updateCommand() {
		
		return new ModelAndView("update");
	}
	// 삭제 화면으로 이동.
	@RequestMapping(value = "delete.do" , method = RequestMethod.POST)
	public ModelAndView deleteCommand() {
		
		return new ModelAndView("delete");
	}
	
	// 업데이트
	@RequestMapping(value = "update_ok.do" , method = RequestMethod.POST)
	public ModelAndView updateOKCommand(VO vo) {
		int result = dao.getUpdate(vo);
		if (result>0) {
			return new ModelAndView("redirect:onelist.do?idx="+vo.getIdx());
		}else {
			return new ModelAndView("redirect:update.do");
		}
		
	}
	
	// 삭제 하기.
		@RequestMapping(value = "delete.do" , method = RequestMethod.POST)
		public ModelAndView deleteOKCommand(HttpServletRequest request) {
			// 삭제를 위해서 vo에 있는 idx를 가져오자.
			VO vo =(VO)request.getSession().getAttribute("vo");
			int result = dao.getDelete(vo.getIdx());
			
			if (result>0) {
				return new ModelAndView("redirect:list.do");
			}else {
				return new ModelAndView("redirect:onelist.do?idx="+vo.getIdx());
			}
			
		}
}
