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

	// 리스트
	public List<VO> getList(String category) throws Exception {
		List<VO> list = null;
		list = sqlSessionTemplate.selectList("list", category);
		return list;
	}

	// 로그인
	public MVO getLogin(MVO m_vo) throws Exception {
		MVO mvo = null;
		mvo = sqlSessionTemplate.selectOne("login", m_vo);
		return mvo;

	}

	// 원리스트
	public VO getOneList(String idx) throws Exception {
		VO vo = null;
		vo = sqlSessionTemplate.selectOne("onelist", idx);

		return vo;
	}

	// 카트 리스트
	public List<CVO> getCartList(String m_id) throws Exception {
		List<CVO> clist = null;
		clist = sqlSessionTemplate.selectList("cartall", m_id);

		return clist;
	}

	// 카트리스트 가져오기 (장바구니)
	public CVO getCartList(String id, String p_num) throws Exception {
		CVO cvo = null;
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("p_num", p_num);
		cvo = sqlSessionTemplate.selectOne("p_cartlist", map);
		return cvo;
	}

	// 카트에 담기.
	public void getCartInsert(CVO cvo) throws Exception {
		sqlSessionTemplate.insert("cartInsert", cvo);
	}

	// 카트에 담겨있는 물건 숫자 올려주기.
	public void getCartUpdate(CVO cvo) throws Exception {
		sqlSessionTemplate.update("cartUpdate", cvo);
	}

	// 삭제
	public void getCartDel(CVO cvo) throws Exception {
		sqlSessionTemplate.delete("cartDel", cvo);
	}

	// 수정
	public void getCartEdit(CVO cvo) throws Exception {
		sqlSessionTemplate.update("cartEdit", cvo);
	}

	// 관리자 파일넣기
	public int getProduct_Insert(VO vo) throws Exception {
		int result = 0;
		sqlSessionTemplate.insert("p_insert", vo);
		return result;
	}

}
