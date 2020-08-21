package com.ict.db;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.jdbc.core.JdbcTemplate;

public class DAO {
	
	
	// jsp는 SqlSession을 사용했지만
	// spring은 SqlSessionTemplate를 사용한다.
	
	private SqlSessionTemplate sqlSessionTemplate;
		// DI를 활용해야 한다.
		
	public DAO() {
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

		
	
	
	// jdbcTemplate를 사용해서 오라클에게 쿼리사용할 수 있다.
	// select만 문법이 틀리고 , insert , update , delete는 문법이 같다.
	// jdbcTemplate에서 select는 무조건 List<VO>를 반환한다. => 1개든 여러개든 무조건 List<VO>로 나온다.
	
	//DB 처리하는 메소드 (사용방법은 sqlSession과 같다.)
	public List<VO> getList(){
		List<VO> list = null;
		list = sqlSessionTemplate.selectList("list");
		return list;
 	}
	
	public int getInsert(VO vo) {
		int result = 0;
		result = sqlSessionTemplate.insert("insert", vo);
		return result;	
	}
	
	public VO getOneList(String idx) {
		VO vo = null;
		vo = sqlSessionTemplate.selectOne("onelist",idx);
		return vo;
	}
	
	public int getUpdate(VO vo) {
		int result = 0;
		result = sqlSessionTemplate.update("update", vo);
		return result;
	}
	
	public void getDelete(String idx) {
		sqlSessionTemplate.delete("delete", idx);
	}
}
