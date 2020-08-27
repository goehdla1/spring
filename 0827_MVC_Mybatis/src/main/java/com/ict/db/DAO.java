package com.ict.db;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.jdbc.core.JdbcTemplate;

public class DAO {
	private SqlSessionTemplate sqlSessionTemplate;

	public DAO() {
		// TODO Auto-generated constructor stub
	}

	public DAO(SqlSessionTemplate sqlSessionTemplate) {
		super();
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	public SqlSessionTemplate getSqlSessionTemplate() {
		return sqlSessionTemplate;
	}

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	public List<VO> getList(){
		List<VO> list = null;
		list = sqlSessionTemplate.selectList("list");
		return list;
	}
	public int getInsert(VO vo) {
		int result = 0;
		result = sqlSessionTemplate.insert("write");
		return result;
	}

}
