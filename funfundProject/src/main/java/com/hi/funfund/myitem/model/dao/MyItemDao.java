package com.hi.funfund.myitem.model.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hi.funfund.item.model.vo.Item;
import com.hi.funfund.myitem.model.vo.MyItem;

@Repository("myItemDao")
public class MyItemDao {
	private static final String nameSpace = "myItemMapper.";
	@Autowired
	private SqlSession sqlSession;
	public int delete(int mpro_no) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public int insertLike(HashMap<String, String> hmap) {
		int result = sqlSession.insert(nameSpace + "insertMyitem", hmap);
		return result;
	}

	/*public List selectLikes(int ano) {
		List likeList = sqlSession.selectList(nameSpace + "selectLikes", ano);
		return likeList;
	}*/

	public List selectLike(int ano) {
		List likeList = sqlSession.selectList(nameSpace + "selectLike", ano);
		return likeList;
	}

	public int deleteLike(HashMap<String, String> hmap) {
		int result = sqlSession.delete(nameSpace + "deleteMyitem", hmap);
		return result;
	}

	public List<Item> selectMyItems(int ano) {
		List<Item> iList = sqlSession.selectList(nameSpace + "selectMyItems", ano);
		return iList;
	}

}
