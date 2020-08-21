package com.ict.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class ArrayPrn  implements Controller{
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("result");
		
		// 일처리
			String[] dogname = {"땅콩이", "점순이" , "토리" , "댕댕이"};
			ArrayList<String> catName = new ArrayList<String>();
			catName.add("야옹이");
			catName.add("다옹이");
			catName.add("루미");
			catName.add("노루");
		// 일처리 결과 저장
			
		mv.addObject("dogname", dogname);
		mv.addObject("catname", catName);
		
		
		
		return mv;
	}

}
