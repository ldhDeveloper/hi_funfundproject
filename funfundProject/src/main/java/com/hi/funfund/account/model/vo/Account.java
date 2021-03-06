package com.hi.funfund.account.model.vo;

import java.io.Serializable;

public class Account implements Serializable {

	private int ano;
	private String id;
	private String pwd;
	private String email;
	private String pimage;
	private String idtype;
	private String idtoken;
	private String seller;
	private String outyn;
	private String nickname;
	private String likecategory;
	
	
	public String getLikecategory() {
		return likecategory;
	}
	public void setLikecategory(String likecategory) {
		this.likecategory = likecategory;
	}
	public String getOutyn() {
		return outyn;
	}
	public void setOutyn(String outyn) {
		this.outyn = outyn;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getAno() {
		return ano;
	}
	public void setAno(int ano) {
		this.ano = ano;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPimage() {
		return pimage;
	}
	public void setPimage(String pimage) {
		this.pimage = pimage;
	}
	public String getIdtype() {
		return idtype;
	}
	public void setIdtype(String idtype) {
		this.idtype = idtype;
	}
	public String getIdtoken() {
		return idtoken;
	}
	public void setIdtoken(String idtoken) {
		this.idtoken = idtoken;
	}
	public String getSeller() {
		return seller;
	}
	public void setSeller(String seller) {
		this.seller = seller;
	}
	public Account() {
		super();
	}
	public Account(int ano, String id, String pwd, String email, String pimage, String idtype, String idtoken,
			String seller, String outyn, String nickname, String likecategory) {
		super();
		this.ano = ano;
		this.id = id;
		this.pwd = pwd;
		this.email = email;
		this.pimage = pimage;
		this.idtype = idtype;
		this.idtoken = idtoken;
		this.seller = seller;
		this.outyn = outyn;
		this.nickname = nickname;
		this.likecategory = likecategory;
	}
	@Override
	public String toString() {
		return "Account [ano=" + ano + ", id=" + id + ", pwd=" + pwd + ", email=" + email + ", pimage=" + pimage
				+ ", idtype=" + idtype + ", idtoken=" + idtoken + ", seller=" + seller + ", outyn=" + outyn
				+ ", nickname=" + nickname + ", likecategory=" + likecategory + "]";
	}
	
	
}
