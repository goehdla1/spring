package com.ict.db;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class DAO {
	// 오라클에서 접근할 수 있는 정보를 가지고 있는 클래스
	// 오라클 쿼리를 사용할 수 있는 클래스

	private JdbcTemplate jdbcTemplate;

	public DAO() {
	}

	public DAO(JdbcTemplate jdbcTemplate) {
		super();
		this.jdbcTemplate = jdbcTemplate;
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	// jdbcTemplate를 사용해서 오라클에게 쿼리사용할 수 있다.
	// select만 문법이 틀리고 , insert , update , delete는 문법이 같다.
	// jdbcTemplate에서 select는 무조건 List<VO>를 반환한다. => 1개든 여러개든 무조건 List<VO>로 나온다.
	
	public List<VO> getList(){
		// 쿼리를 return 해야되서 먼저 쿼리를 쓴다.
		String sql = "select * from members order by idx";
		// List<VO> - return 
		return jdbcTemplate.query(sql,new RowMapper() {
			@Override
			
			//VO ruturn - 한 행을 만든다. => 그래서 무조건 List<VO>를 쓰는 이유이다.
			public VO mapRow(ResultSet rs, int rowNum) throws SQLException {
				// 결과는 rs가 가지고 있다.
				VO vo = new VO();
				vo.setIdx(rs.getString("idx"));
				vo.setM_id(rs.getString("m_id"));
				vo.setM_pw(rs.getNString("m_pw"));
				vo.setM_name(rs.getNString("m_name"));
				vo.setM_age(rs.getString("m_age"));
				vo.setM_reg(rs.getNString("m_reg"));
				return vo;
			}
		});
	}
	
	// 삽입
	public int getInsert(VO vo) {
	int result = 0 ;
	String sql = "insert into members values(members_seq.nextval,?,?,?,?,sysdate)";
		
	// insert , update , delete 는  jdbcTemplate.update() 사용.
	
	result = jdbcTemplate.update(sql ,vo.getM_id(),vo.getM_pw(),vo.getM_name(),vo.getM_age());
			
	return result;
		
	}
	
	// oneList
	public List<VO> getOneList(String idx){
		// 쿼리를 return 해야되서 먼저 쿼리를 쓴다.
		String sql = "select * from members where idx = ? ";
		// List<VO> - return 
		return jdbcTemplate.query(sql,new RowMapper() {
			@Override
			
			//VO ruturn - 한 행을 만든다. => 그래서 무조건 List<VO>를 쓰는 이유이다.
			public VO mapRow(ResultSet rs, int rowNum) throws SQLException {
				// 결과는 rs가 가지고 있다.
				VO vo = new VO();
				vo.setIdx(rs.getString("idx"));
				vo.setM_id(rs.getString("m_id"));
				vo.setM_pw(rs.getNString("m_pw"));
				vo.setM_name(rs.getNString("m_name"));
				vo.setM_age(rs.getString("m_age"));
				vo.setM_reg(rs.getNString("m_reg"));
				return vo;
			}
		},idx);
	}
	
	public int getUpdate(VO vo) {
		int result = 0;
		String sql = "update members set m_name = ? m_age = ? where idx=  ? ";
		result = jdbcTemplate.update(sql, vo.getM_name(),vo.getM_age(),vo.getIdx());
		return result;
		
	}
	
	public void getDelete(String idx) {
		String sql = "delete from members where idx=?";
		jdbcTemplate.update(sql,idx);
		
	}
	
}
