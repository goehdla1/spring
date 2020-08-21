package com.ict.first;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

// 애노테이션이 아니면 반드시 Controller 인터페이스를 상속 받아야 한다..

public class IndexController implements Controller{
	
	// jsp의 모델처럼 일처리하고 뷰의 위치값을 리턴한다.(servlet - context .xml)
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mv = new ModelAndView();
		// 뷰의 값을 mv에 넣어준다. = > view resolve 로 보낸다.
		mv.setViewName("views/output");
		
		// 일처리
		
		// 일처리 결과를 저장
		// 저장방법 : request , session , ModelAndview (=request와 같은 생명주기)
		request.setAttribute("name", "홍길동");
		request.getSession().setAttribute("age", 27);
		mv.addObject("addr","서울시 마포구 서교동"); // ModelAndview 저장 방법.
		
		
		return mv;
	}

}
