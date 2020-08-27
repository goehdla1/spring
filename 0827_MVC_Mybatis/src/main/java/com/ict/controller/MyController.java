package com.ict.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	@RequestMapping(value = "list.do", method = RequestMethod.GET)
	public ModelAndView listCommand() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("list");
		List<VO> list = dao.getList();
		mv.addObject("list", list);
		return mv;
	}
	// 글 쓰는 페이지 보기.
	@RequestMapping("write.do")
	public ModelAndView writeCommand() {
		return new ModelAndView("write");
	}
	
	// 글 쓰기
	@RequestMapping(value = "write_ok.do", method = RequestMethod.POST)
	public ModelAndView writeOKCommand(VO vo) {
		ModelAndView mv;
		int result = dao.getInsert(vo);
		if (result>0) {
			mv = new ModelAndView("redirect:list.do");
		}else{
			mv = new ModelAndView("redirect:write.do");
		}
		return mv;
	}
}
