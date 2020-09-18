package com.ict.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class DAO {
	private SqlSessionTemplate sqlSessionTemplate ;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	// DB처리
	
	// 리스트
	/*public List<VO> getList(){
		List<VO> list = null;
		list = sqlSessionTemplate.selectList("list");
		return list;
	}*/
	
	public List<VO> getList1(int begin , int end){
		List<VO> list = null;
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		list = sqlSessionTemplate.selectList("list",map);
		return list;
	}
	
	// 글쓰기
	public int getInsert(VO vo) {
		int result = 0;
		result = sqlSessionTemplate.insert("write",vo);
		return result;
	}
	
	// 원리스트
	public VO getOnelist(String idx){
		VO vo = null;
		vo = sqlSessionTemplate.selectOne("onelist", idx);
		return vo ;
	}
	
	// 삭제하기
	public void getDelete(String idx) {
		sqlSessionTemplate.delete("delete", idx);
	}
	
	// 수정하기
	public int getUpdate(VO vo) {
		int result = 0;
		result = sqlSessionTemplate.update("update", vo);
		return result;
	}
	
	// 페이징 기법
	public int getTotalCount() {
		int result = 0 ;
		result = sqlSessionTemplate.selectOne("count");
		return result;
	}
	
	public List<VO> getList(int begin, int end){
		List<VO> list = null;
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		list = sqlSessionTemplate.selectList("list",map);
		return list;
	}
	

}
