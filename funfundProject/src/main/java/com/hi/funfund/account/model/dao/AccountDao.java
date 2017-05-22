package com.hi.funfund.account.model.dao;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hi.funfund.account.model.vo.Account;
import com.hi.funfund.account.model.vo.Party;

@Repository("accountDao")
public class AccountDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Account login(Account account) {
		account = (Account)sqlSession.selectOne("login", account);
		return account;
	}

	public int insert(Account account) {
		int result = sqlSession.insert("signupAccount", account);
		/*if(result > 0){
			sqlSession.commit();
		}*/
		return result;
	}

	public Party loginParty(int ano) {
		Party p  = (Party)sqlSession.selectOne("loginParty", ano);
		return p;
	}

	public Account selectOldPwd(int ano, String oldPwd) {
		HashMap<String, String> hmap = new HashMap<String, String>();
		hmap.put("ano", Integer.toString(ano));
		hmap.put("oldPwd", oldPwd);
		Account account = (Account) sqlSession.selectOne("selectOldPwd", hmap);
		
		return account;
	}

	public int updatePwd(int ano, String newPwd) {
		HashMap<String, String> hmap = new HashMap<String, String>();
		hmap.put("ano",  Integer.toString(ano));
		hmap.put("newPwd", newPwd);
		int result = sqlSession.update("updatePwd", hmap);
		System.out.println("PWD Dao ano : " + ano + " newPwd : " + newPwd);
		
		return result;
	}

	public int insertName(int ano, String name) {
		HashMap<String, String> hmap = new HashMap<String, String>();
		hmap.put("ano",  Integer.toString(ano));
		hmap.put("name", name);
		int result = sqlSession.update("insertName", hmap);
		return result;
	}

	public int updateName(int ano, String name) {
		HashMap<String, String> hmap = new HashMap<String, String>();
		hmap.put("ano",  Integer.toString(ano));
		hmap.put("name", name);
		int result = sqlSession.update("updateName", hmap);

		return result;
	}

	public int updateNickname(int ano, String nickname) {
		HashMap<String, String> hmap = new HashMap<String, String>();
		hmap.put("ano", Integer.toString(ano));
		hmap.put("nickname", nickname);
		int result = sqlSession.update("updateNickname", hmap);

		return result;
	}

	public Account selectAccount(int ano) {
		Account account = (Account) sqlSession.selectOne("selectAccount", ano);
		return account;
	}
	//타사이트로 가입한 유저 찾기/로그인/중복가입방지
	public Account selectThirdPartyUser(Account account){ 
		int result = 0; //데이터베이스에 회원이 있는지를 가리기위한 변수
		Account user = (Account) sqlSession.selectOne("accountMapper.thirdPartyUser", account);
		if(user == null){
			account.setId(account.getEmail());
			 result = sqlSession.insert("accountMapper.insertThirdParty", account);
			 if(result > 0){
				 user = account;
			 }
		}else{
			if(user.getIdtoken() == null ){
				user = null;
			}else{
				user = user.getIdtoken().equals(account.getIdtoken())? user : null;
			}
		}
		return user;
	}

	// 이메일 정보 수정
	
	public int updateEmail(String ano, String email) {
		HashMap<String, String> hmap = new HashMap<String, String>();
		hmap.put("ano", ano);
		hmap.put("email", email);
		int result = sqlSession.update("updateEmail", hmap);

		return result;
	}
	
	// 판매자 정보 입력

	public int insertSeller(int ano, String phone, String id_no, String address, String idimage) {
		HashMap<String, String> hmap = new HashMap<String, String>();
		hmap.put("ano", Integer.toString(ano));
		hmap.put("address", phone);
		hmap.put("address", id_no);
		hmap.put("address", address);
		hmap.put("address", idimage);
		int result = sqlSession.insert("insertSeller", hmap);
		return result;
	}
	
	// 판매자 정보 수정

	public int updateSeller(int ano, String phone, String id_no, String address, String idimage) {
		HashMap<String, String> hmap = new HashMap<String, String>();
		hmap.put("ano", Integer.toString(ano));
		hmap.put("address", phone);
		hmap.put("address", id_no);
		hmap.put("address", address);
		hmap.put("address", idimage);
		int result = sqlSession.insert("updateSeller", hmap);
		return result;
	}

}
