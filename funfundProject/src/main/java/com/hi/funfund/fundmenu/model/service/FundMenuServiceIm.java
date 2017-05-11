package com.hi.funfund.fundmenu.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hi.funfund.fundmenu.model.dao.FundMenuDao;
import com.hi.funfund.fundmenu.model.vo.FundMenu;

@Service("fundMenuService")
public class FundMenuServiceIm implements FundMenuService {

	@Autowired
	private FundMenuDao fundMenuDao;

	@Override
	public FundMenu selectOne(int pro_no) {
		
		return fundMenuDao.selectOne(pro_no);
	}

	@Override
	public int insert(FundMenu fm) {
		
		return fundMenuDao.insert(fm);
	}

	@Override
	public int update(FundMenu fm) {
		
		return fundMenuDao.update(fm);
	}

	@Override
	public int delete(int pro_no) {
		
		return fundMenuDao.delete(pro_no);
	} 
}
