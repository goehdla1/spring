package com.ict.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class DAO {
	private SqlSessionTemplate sqlSessionTemplate;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	// 카운트
	public int getTotalCount() {
		int result = 0;
		result = sqlSessionTemplate.selectOne("count");
		return result;
	}
	// 리스트
	public List<VO> getList(int begin, int end) {
		List<VO> list = null;
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		list = sqlSessionTemplate.selectList("list", map);
		return list;
		
	}
	
	// 글쓰기
	 public int getInsert(VO vo) {
		 int result = 0;
		 result = sqlSessionTemplate.insert("insert", vo);
		 return result;
	 }
	 
	 // 조횟수
	 public void getHit(String idx) {
		 sqlSessionTemplate.update("hit", idx);
	 }
	 
	 // 원글
	 public VO getOneList(String idx) {
		 VO vo = null;
		 vo = sqlSessionTemplate.selectOne("onelist",idx);
		 return vo;
	 }
	 // 업데이트
	 public int getUpdate(VO vo) {
		 int result = 0;
		 result = sqlSessionTemplate.update("update",vo);
		 return result;
	 }
	 
	 // 삭제
	 public int getDelete(String idx) {
		 int result = 0;
		 result = sqlSessionTemplate.delete("delete",idx);
		 return result;
	 }
	 
}
