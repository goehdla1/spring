package com.ict.ex08;

import org.springframework.stereotype.Component;

@Component("dao") // <bean id="oracle" class="com.ict.ex08.OracleDAO"/> 랑 같다.
public class OracleDAO implements DAO{
	public OracleDAO() {
		System.out.println("OracleDAO 생성자");
	}
	
	@Override
	public void prn() {
		System.out.println("OracleDAO 실행 메소드");
	}
}
