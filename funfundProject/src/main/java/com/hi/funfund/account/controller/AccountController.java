package com.hi.funfund.account.controller;

import java.io.IOException;
import java.util.Properties;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.hi.funfund.AuthMail.AuthMail;
import com.hi.funfund.account.model.service.AccountService;
import com.hi.funfund.account.model.vo.Account;
import com.hi.funfund.account.model.vo.Party;
import com.hi.funfund.attachment.model.vo.Attachment;



@Controller
//@RequestMapping("account")
public class AccountController {

	@Autowired
	private AccountService accountService;
	
	@RequestMapping("/login.ao")
	public ModelAndView login(Party party, Account account, ModelAndView mv, HttpServletRequest request){
		account = accountService.login(account);
		Party p = accountService.loginParty(account.getAno());
		HttpSession session = request.getSession(false);
		if(account != null){
			session.setAttribute("account", account);
			session.setAttribute("party", p);
		}
		mv.setViewName("home");
		return mv;
	}
	
	@RequestMapping(value = "/loginWithApi.ao") // 타 사이트 정보로 회원가입
	public ModelAndView loginWithThirdParty(Account account, ModelAndView mv, HttpServletRequest request ){
		String access_token = request.getParameter("access_token");
		System.out.println(account);
		Account thirdPartyUser = accountService.selectThirdPartyUser(account);
		Party p = null;
			HttpSession session = request.getSession(false);
			if(thirdPartyUser != null){
				
				p = accountService.loginParty(thirdPartyUser.getAno());
				session.setAttribute("account", thirdPartyUser);
				session.setAttribute("party", p);	
				mv.setViewName("redirect:/");
				session.setAttribute("access_token", access_token);
			}else{
				mv.addObject("loginFail", "로그인에 실패 했습니다.");
				mv.setViewName("home");
			}				System.out.println(mv);
			
		
		return mv;
	}
	
	
	
	@RequestMapping(value = "/signup.ao", produces = "text/plain;charset=UTF-8")
	public String signup(Account account){
		int ok = accountService.insert(account);
		String result="";
		if(ok > 0){
			result = "home";
		}
		return result;
	}
	
	@RequestMapping("/logout.ao")
	public String logout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
	
	// myinfo 회원정보 설정 시작
	
	@RequestMapping(value = "myinfo.ao")
	public String myinfo(){
		return "myinfo/myinfo";
	}
	
	@RequestMapping(value = "myinfo1.ao")
	public String myinfo1(){
		
		return "myinfo/myinfo";
	}
	
	@RequestMapping(value = "investRequest.ao")
	public String investRequest(){
		return "myinfo/investRequest";
	}
	
	@RequestMapping(value = "sellerinfo.ao")
	public String sellerinfo(){
		return "myinfo/sellerinfo";
	}
	
	@RequestMapping(value = "joinproject.ao")
	public String joinproject(){
		return "myinfo/joinproject";
	}
	
	@RequestMapping(value = "puttoproject.ao")
	public String puttoproject(){
		return "myinfo/puttoproject";
	}
	
	@RequestMapping(value = "newproject.ao")
	public String newproject(){
		return "myinfo/newproject";
	}
	
	@RequestMapping(value = "myfunding.ao")
	public String myfunding(){
		return "myinfo/myfunding";
	}
	
	
	// Myinfo 이름, 닉네임 변경 시각
	
	@RequestMapping(value = "changeMyinfo.ao")
	public String changeMyinfo(ModelAndView model, HttpSession session, HttpServletRequest request) {		
		session = request.getSession(false);
		Account account = (Account)session.getAttribute("account");
		
		int ano = account.getAno();
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");
		
		//이름
		
		Party party = accountService.loginParty(ano);
				
		if(party == null){
			int result = accountService.insertName(ano, name);
		}
		
		else {
			int result2 = accountService.updateName(ano, name);
		}
		party = accountService.loginParty(ano);
		session.setAttribute("party", party);
		
		// 닉네임		
		if(account != null) {
			int result = accountService.updateNickname(ano, nickname);
		}
		
		account = accountService.selectAccount(ano);
		session.setAttribute("account", account);
		
		return "myinfo/myinfo";
	}
	
	// myinfo 비밀번호 변경 시작
	
	@RequestMapping(value = "changePwd.ao")
	public ModelAndView changePwd(ModelAndView model, HttpSession session, HttpServletRequest request) {
		System.out.println("오니?");
		session = request.getSession(false);
		Account account = (Account)session.getAttribute("account");
		
		int ano = account.getAno();
		String oldPwd = request.getParameter("oldPwd");
		String newPwd = request.getParameter("newPwd");		
		
		Account account2 = accountService.selectOldPwd(ano, oldPwd);
		
		System.out.println("PWD Controller ano : " + ano + " oldPwd : " + oldPwd);
		
		if(account2 != null) {
			int result = accountService.updatePwd(ano, newPwd);
			
			System.out.println("PWD Controller2 ano : " + ano + " newPwd : " + newPwd);
		}
		
		model.addObject("account", account2);
		model.setViewName("myinfo/myinfo");	
		
		return model;
	}		
	// myinfo 비밀번호 변경 끝
	
	
	// myinfo 이메일 인증 시작
	
	@RequestMapping(value = "authEmail.ao", method=RequestMethod.GET)
	public @ResponseBody void authEmail(@RequestParam("email") String email, @RequestParam("authNumber") String authNumber) {
		ApplicationContext context = new ClassPathXmlApplicationContext("Spring-Mail.xml");
		
	    AuthMail mm = (AuthMail) context.getBean("mailMail");
	    mm.sendMail("from@no-spam.com", email, "Funfund에서 이메일 인증번호를 발송합니다.", "인증번호는 <strong>" + authNumber + "</strong>입니다.");
	    
	    return;
	}
	
	@RequestMapping(value = "authNumerCheck.ao", method=RequestMethod.GET)
	public @ResponseBody void authNumerCheck(@RequestParam("email") String email, @RequestParam("ano") String ano) {
		int result = accountService.updateEmail(ano, email);
		
	    return;
	}
	
	// seller 정보 변경 시작
	
	@RequestMapping(value = "changSeller.ao")
	public String changSeller(Attachment vo, HttpServletRequest request) throws  IOException{
		System.out.println("오니?");
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		MultipartFile idimage = multipartRequest.getFile("idimage");
		HttpSession session = request.getSession(false);
		String page="";
		
		
		
		session = request.getSession(false);
		Account account = (Account)session.getAttribute("account");
		int ano = account.getAno();
		Party party = accountService.loginParty(ano);
		
		String phone = request.getParameter("phone");
		
		String id_no1 = request.getParameter("id_no1");
		String id_no2 = request.getParameter("id_no");
		
		String id_no = id_no1 + "-" + id_no2;
				
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String address3 = request.getParameter("address3");
		
		String address = address1 + "-" + address2 + "-" + address3;
		
		/*if(party == null){
			int result = accountService.insertSeller(ano, phone, id_no, address, idimage);
		}
		
		else {
			int result = accountService.updateSeller(ano, phone, id_no, address, idimage);
		}*/
		
		party = accountService.loginParty(ano);
		
		session.setAttribute("party", party);
		
		return "myinfo/sellerinfo";
	}	
}
