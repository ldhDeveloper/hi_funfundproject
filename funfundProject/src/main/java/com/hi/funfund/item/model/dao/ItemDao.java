package com.hi.funfund.item.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hi.funfund.item.model.vo.Item;

@Repository("itemDao")
public class ItemDao {
	
	private static final String nameSpace = "itemMapper.";
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insertRewardItem(Item item){
		int pro_no = 0;
		System.out.println("실행전 : " + item.getPro_no());
		int result = sqlSession.insert(nameSpace + "insert", item);
		System.out.println("실행후 : " + item.getPro_no());
		
		if(result > 0){
			pro_no = item.getPro_no();
		}
		
		return pro_no;
	}

	public List AllList() {
		List<Item> iList = (List<Item>) sqlSession.selectList(nameSpace+"selectList");
		System.out.println("iList:"+iList.get(0));
		return iList;
	}

	public Item selectOne(int pro_no) {
		System.out.println("no: "+pro_no);
		Item result = (Item) sqlSession.selectOne(nameSpace+"selectOne", pro_no); 
		System.out.println("result: "+result);
		return result;
	}

	public int updateRewardItem(Item item) {
		System.out.println("프로젝트번호 : " + item.getPro_no());
		int result = sqlSession.update(nameSpace + "tempupdate", item);
		
		return result;
	}

	public List<Item> top3List() {
		List<Item> top3List = (List<Item>) sqlSession.selectList(nameSpace+"top3List");
		System.out.println("top3List :"+top3List.get(0));
		return top3List;
	}

	public List<Item> bestList(int pro_no) {
		List bestList = sqlSession.selectList(nameSpace+"bestList", pro_no);
		return null;
	}
		
	public int selectAllItem() {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
