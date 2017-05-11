package com.hi.funfund.fundlist.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hi.funfund.fundlist.model.dao.FundListDao;
import com.hi.funfund.fundlist.model.vo.FundList;


@Service("fundListService")
public class FundListServiceIm implements FundListService {

	@Autowired 
	private FundListDao fundListDao;

	@Override
	public List<FundList> selectList() {
	
		
		
		return fundListDao.selectList();
	}

	@Override
	public int insert(FundList fList) {
		
		
		
		return fundListDao.insert(fList);
	}

	@Override
	public int update(FundList fList) {
		
		
		
		return fundListDao.update(fList);
	}
}
