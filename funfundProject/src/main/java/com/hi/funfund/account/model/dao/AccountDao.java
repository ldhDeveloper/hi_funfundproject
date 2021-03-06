package com.hi.funfund.account.model.dao;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

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
		System.out.println("resultano : " + account.getAno());
		result = sqlSession.insert("createLikeInfo", account.getAno());
		
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
		Account user = (Account) sqlSession.selectOne("selectWithEmail", account);
		if(user == null){
			account.setId(account.getEmail());
			 result = sqlSession.insert("accountMapper.insertThirdParty", account);
			 //System.out.println("ano : " + account.getAno());
			 result = sqlSession.insert("createLikeInfo", account.getAno());
			 
			 if(result > 0){
				 user = (Account) sqlSession.selectOne("selectAccount", account.getAno());
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
	
	// 판매자 정보 수정

	public int updateSeller(int ano, String phone, String id_no, String address) {
		HashMap<String, String> hmap = new HashMap<String, String>();
		int result = 0;
		System.out.println("seller Dao1 ano : " + ano + " phone : " + phone + " id_no : " + id_no + " address : " + address);
		hmap.put("ano", Integer.toString(ano));
		hmap.put("phone", phone);
		hmap.put("id_no", id_no);
		hmap.put("address", address);
		result += sqlSession.update("updateSeller", hmap);
		result += sqlSession.update("updateIdtype", ano);
		System.out.println("seller Dao2 ano : " + ano + " phone : " + phone + " id_no : " + id_no + " address : " + address);
		return result;
	}

	public Party selectResult(int ano) {
		Party p  = (Party)sqlSession.selectOne("selectResult", ano);
		return p;
	}

	public Account createTempPwd(Account account) {
		
		/*Account ac = (Account)sqlSession.selectOne("selectWithEmail", account);*/
		Account ac = account;
		/*if(ac != null && ac.getPwd() != null){*/
			char[] charaters = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9'};
            StringBuffer sb = new StringBuffer();
            Random rn = new Random();
            	for( int i = 0 ; i < 10 ; i++ ){
                sb.append( charaters[rn.nextInt( charaters.length )] );
            	}
            String pw =  sb.toString();
            ac.setPwd(pw);
			/*int result = sqlSession.update("changePwd", ac);
				if(result > 0){
					ac.setPwd(pw);
					
				}*/
		/*}else{
			ac=null;
		}*/
		return ac;
	}

	public Account checkId(Account account) {
		
		return (Account)sqlSession.selectOne("selectWithEmail", account);
	}

	public List<Account> selectRequestSeller() {
		List<Account> alist = (List<Account>) sqlSession.selectList("selectRequestSeller");
		return alist;
	}

	public int approveSeller(int ano) {
		int result = sqlSession.update("approveSeller", ano);
		return result;
	}

	public int rejectSeller(int ano) {
		int result = sqlSession.update("rejectSeller", ano);
		return result;
	}
	
	public int upCategory(HashMap<String, String> hmap) {
		int result = sqlSession.update("upCategory", hmap); 
		return result;
	}

	public int tempUp(int ano) {
		int result = sqlSession.update("tempUp", ano); 
		return result;
	}	
}
