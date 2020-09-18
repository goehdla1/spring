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
	
	// DB처리 
	// 게시물의 수
	public int getTotalCount() {
		int result = 0;
		result = sqlSessionTemplate.selectOne("count");
		return result ;
	}
	
	// 리스트
	
	public List<BVO> getList(int begin , int end){
		List<BVO> list = null;
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin", begin);
		map.put("end", end);
		list = sqlSessionTemplate.selectList("list" , map);
		return list ;
	}
	
	// 글쓰기
	public int getInsert(BVO bvo) {
		int result = 0;
		result = sqlSessionTemplate.insert("insert", bvo);
		return result;
	}
	
	// 조회수
	public void getHit(String b_idx) {
		sqlSessionTemplate.update("hit",b_idx);
	}
	
	// 원글
	public BVO getOneList(String b_idx) {
		BVO bvo = null;
		bvo = sqlSessionTemplate.selectOne("onelist" , b_idx);
		return bvo;
	}
	
	// 삭제
	public void getDelete(String b_idx) {
		sqlSessionTemplate.delete("delete", b_idx);
	}
	
	// 업데이트
	public int getUpdate(BVO bvo) {
		int result = 0;
		result = sqlSessionTemplate.update("update", bvo);
		return result;
	}
	
	// 댓글 보기
	public List<CVO> getCommList(String b_idx){
		List<CVO> c_list = null;
		c_list = sqlSessionTemplate.selectList("c_list", b_idx);
		return c_list ;
	}
	
	// 댓글 쓰기
	public void getCommWrite(CVO cvo) {
		sqlSessionTemplate.insert("c_insert", cvo);
	}
	
	// 댓글 삭제
	public void getCommDelete(CVO cvo) {
		sqlSessionTemplate.delete("c_delete", cvo);
	}
}








