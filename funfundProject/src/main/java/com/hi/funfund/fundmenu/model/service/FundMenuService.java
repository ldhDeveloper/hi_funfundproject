package com.hi.funfund.fundmenu.model.service;

import java.util.List;

import com.hi.funfund.fundmenu.model.vo.FundMenu;
import com.hi.funfund.fundmenu.model.vo.ReciveFundMenu;

public interface FundMenuService {

	List<FundMenu> selectList(int pro_no);

	int insert(FundMenu fm);

	int update(FundMenu fm);

	int delete(int pro_no);

	int insertOrUpdateFundMenu(FundMenu fmenu);

}
