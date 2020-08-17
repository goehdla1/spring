package com.ict.ex08;

import org.springframework.stereotype.Component;

@Component("maria") // <bean id="maria" class="com.ict.ex08.OracleDAO"/> 랑 같다. 
public class MariaDAO implements DAO{
	public MariaDAO() {
		System.out.println("MariaDAO 생성자");
	}

	public void prn() {
		System.out.println("MariaDAO 실행 메소드");
	}
}
