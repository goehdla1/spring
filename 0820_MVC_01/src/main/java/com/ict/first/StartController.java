package com.ict.first;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;


//애노테이션이 아니면 반드시 Controller 인터페이스를 상속 받아야 한다..

public class StartController implements Controller{
	
	// jsp의 모델처럼 일처리하고 뷰의 위치값을 리턴하
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("views/output2");
		
		// 일처리
		
		
		
		// 저장
		request.setAttribute("name", "콩벌레");
		request.getSession().setAttribute("age", 380);
		mv.addObject("addr", "ict 인재 개발원 화장실");
		// Cotroller의 리턴은 무조건 servlet-context.xml 이다.
		
		return mv;
	}
}
