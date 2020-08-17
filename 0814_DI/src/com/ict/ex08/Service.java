package com.ict.ex08;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component("service")
public class Service {
	@Autowired // <property name="dao" ref="oracle"/> 랑 같다.
	private DAO dao ; // DAO 라는 클래스를 dao 자료형으로 만든다.
	private String name; // 변수
	
	public Service() {
		System.out.println("Service 생성자");
	}

	// DAO를 받는 생성자.
	public Service(DAO dao) {
		super();
		this.dao = dao;
		System.out.println("Service 생성자");
	}

	public DAO getDao() {
		return dao;
	}

	public void setDao(DAO dao) {
		this.dao = dao;
	}
	
	// 실행하고자 하는 메소드
	public void biz() {
		dao.prn();
	}
	
}
