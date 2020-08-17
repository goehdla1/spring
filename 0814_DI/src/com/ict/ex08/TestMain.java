package com.ict.ex08;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestMain {
	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("com/ict/ex08/config.xml");
		
		Service service = (Service)context.getBean("service"); // getBean = service.java에서 @Component 이름을 부르는거다 
		service.biz();
	}
}
