package com.hi.funfund.account.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hi.funfund.account.model.dao.AccountDao;
import com.hi.funfund.account.model.vo.Account;
import com.hi.funfund.account.model.vo.Party;

@Service("AccountService")
public class AccountServiceIm implements AccountService {

	@Autowired
	AccountDao accountDao;

	@Override
	public Account login(Account account) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String findId(Account account) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int findPwd(Account account) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Account checkId(String Id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(Account account) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Account account) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Account account) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Party seller) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Party selectParty(int pno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Account selectAccount(int ano) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(Party seller) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List selectAccountList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List selectPartyList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List selectGradeList() {
		// TODO Auto-generated method stub
		return null;
	}

	
	
}
