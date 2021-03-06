package com.hi.funfund.itemask.model.vo;

import java.sql.Date;

public class ItemAskAccount {
	private int ask_no;
	private int pro_no;
	private String ask_type;
	private String ask_content;
	private int id_no;
	private Date ask_date;
	private int upask_no;
	private String nickname;
	private String idtype;
	private String pimage;
	/* private String orifname; */

	public ItemAskAccount() {
		super();
	}

	public ItemAskAccount(int ask_no, int pro_no, String ask_type, String ask_content, int id_no, Date ask_date,
			int upask_no, String nickname, String idtype, String pimage) {
		super();
		this.ask_no = ask_no;
		this.pro_no = pro_no;
		this.ask_type = ask_type;
		this.ask_content = ask_content;
		this.id_no = id_no;
		this.ask_date = ask_date;
		this.upask_no = upask_no;
		this.nickname = nickname;
		this.idtype = idtype;
		this.pimage = pimage;
	}

	/*
	 * public ItemAskAccount(int ask_no, int pro_no, String ask_type, String
	 * ask_content, int id_no, Date ask_date, int upask_no, String nickname,
	 * String idtype, String orifname) { super(); this.ask_no = ask_no;
	 * this.pro_no = pro_no; this.ask_type = ask_type; this.ask_content =
	 * ask_content; this.id_no = id_no; this.ask_date = ask_date; this.upask_no
	 * = upask_no; this.nickname = nickname; this.idtype = idtype; this.orifname
	 * = orifname; }
	 */

	public int getAsk_no() {
		return ask_no;
	}

	public void setAsk_no(int ask_no) {
		this.ask_no = ask_no;
	}

	public int getPro_no() {
		return pro_no;
	}

	public void setPro_no(int pro_no) {
		this.pro_no = pro_no;
	}

	public String getAsk_type() {
		return ask_type;
	}

	public void setAsk_type(String ask_type) {
		this.ask_type = ask_type;
	}

	public String getAsk_content() {
		return ask_content;
	}

	public void setAsk_content(String ask_content) {
		this.ask_content = ask_content;
	}

	public int getId_no() {
		return id_no;
	}

	public void setId_no(int id_no) {
		this.id_no = id_no;
	}

	public Date getAsk_date() {
		return ask_date;
	}

	public void setAsk_date(Date ask_date) {
		this.ask_date = ask_date;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public int getUpask_no() {
		return upask_no;
	}

	public void setUpask_no(int upask_no) {
		this.upask_no = upask_no;
	}

	public String getIdtype() {
		return idtype;
	}

	public void setIdtype(String idtype) {
		this.idtype = idtype;
	}

	public String getPimage() {
		return pimage;
	}

	public void setPimage(String pimage) {
		this.pimage = pimage;
	}

	/*
	 * public String getOrifname() { return orifname; }
	 * 
	 * public void setOrifname(String orifname) { this.orifname = orifname; }
	 */

	/*
	 * @Override public String toString() { return "ItemAskAccount [ask_no=" +
	 * ask_no + ", pro_no=" + pro_no + ", ask_type=" + ask_type +
	 * ", ask_content=" + ask_content + ", id_no=" + id_no + ", ask_date=" +
	 * ask_date + ", upask_no=" + upask_no + ", nickname=" + nickname +
	 * ", idtype=" + idtype + ", orifname=" + orifname + "]"; }
	 */

	@Override
	public String toString() {
		return "ItemAskAccount [ask_no=" + ask_no + ", pro_no=" + pro_no + ", ask_type=" + ask_type + ", ask_content="
				+ ask_content + ", id_no=" + id_no + ", ask_date=" + ask_date + ", upask_no=" + upask_no + ", nickname="
				+ nickname + ", idtype=" + idtype + ", pimage=" + pimage + "]";
	}

}
