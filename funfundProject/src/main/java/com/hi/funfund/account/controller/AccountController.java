package com.hi.funfund.account.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hi.funfund.account.model.service.AccountService;
import com.hi.funfund.account.model.vo.Account;

@Controller
@RequestMapping("account")
public class AccountController {

	@Autowired
	private AccountService accountService;
	
	@RequestMapping("/login.do")
	public ModelAndView login(Account account, ModelAndView mv){
		account = accountService.login(account);
		mv.addObject(account);
		mv.setViewName("/loginSuccess");
		return mv;
	}
	
	
}
