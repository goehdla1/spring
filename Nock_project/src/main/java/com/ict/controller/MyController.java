package com.ict.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.ict.db.DAO;

@Controller
public class MyController {

	private DAO dao;

	@Autowired
	public void setDao(DAO dao) {
		this.dao = dao;
	}

}
