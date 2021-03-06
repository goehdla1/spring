package com.ict.ex07;

public class Service {
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
