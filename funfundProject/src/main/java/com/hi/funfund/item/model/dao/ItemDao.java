package com.hi.funfund.item.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hi.funfund.itemask.model.vo.ItemAsk;

@Repository("itemDao")
public class ItemDao {
	
	private static final String nameSpace = "itemMapper.";
	@Autowired
	private SqlSession sqlSession;
	public int insert(ItemAsk itemAsk) {
		// TODO Auto-generated method stub
		return 0;
	}
	public int update(ItemAsk itemAsk) {
		// TODO Auto-generated method stub
		return 0;
	}
	public int delete(int ask_no) {
		// TODO Auto-generated method stub
		return 0;
	}
	public List<ItemAsk> selectList(int pro_no) {
		// TODO Auto-generated method stub
		return null;
	}

}
