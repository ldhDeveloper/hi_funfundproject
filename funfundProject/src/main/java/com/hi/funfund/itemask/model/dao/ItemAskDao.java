package com.hi.funfund.itemask.model.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hi.funfund.itemask.model.vo.ItemAsk;

@Repository("itemAskDao")
public class ItemAskDao {
	private static final String nameSpace = "itemAskMapper.";
	@Autowired
	private SqlSession sqlSession;

	public int insert(HashMap<String, String> cmap) {
		int result = sqlSession.insert(nameSpace + "insertAsk", cmap);
		return result;
	}

	public int update(HashMap<String, String> umap) {
		int result=sqlSession.update(nameSpace+"updateAsk", umap);
		return result;
	}

	public int delete(int ask_no) {
		int result=sqlSession.update(nameSpace+"deleteAsk", ask_no);
		return result;
	}

	public List<ItemAsk> selectList(int pro_no) {
		List<ItemAsk> aList = sqlSession.selectList(nameSpace + "selectList", pro_no);
		return aList;
	}

	public int reinsert(HashMap<String, String> cmap) {
		int result = sqlSession.insert(nameSpace + "reinsertAsk", cmap);
		return result;
	}

	public int redelete(int ask_no) {
		int result=sqlSession.update(nameSpace+"redeleteAsk", ask_no);
		return result;
	}

}
