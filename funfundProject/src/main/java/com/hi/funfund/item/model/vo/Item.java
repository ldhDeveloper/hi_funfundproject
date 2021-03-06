package com.hi.funfund.item.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Item implements Serializable {

	

	private Integer pro_no;
	private Integer ano;
	private String pname;
	private String pcontent;
	private String category;
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date psdate;
	private String s_psdate;
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date pedate;
	private String s_pedate;
	private String pshort;
	private Integer ecost;
	private String refund;
	private String pvideo;
	private String pstatus;
	private int likecount;
	private String sharelink;
	private String bankcode;
	private String accpnm;
	private String accnum;
	private String cname;
	private String cs_email;
	private String cs_phone;
	private Integer fundamount;
	private Integer fundcount;
	private Integer supportcount;
	private Integer upcount;
	private Integer repcount;
	private String thumbnail;
	private String pimage;
	private String billstatus;
	private Date firstdeposit;
	private Date seconddeposit;
	private Integer firstprice;
	private Integer secondprice;
	private String icomment;
	private String checkacc;
	
	public Item() {
	}

	public Item(Integer pro_no, Integer ano, String pname, String pcontent, String category, Date psdate,
			String s_psdate, Date pedate, String s_pedate, String pshort, Integer ecost, String refund, String pvideo,
			String pstatus, int likecount, String sharelink, String bankcode, String accpnm, String accnum,
			String cname, String cs_email, String cs_phone, Integer fundamount, Integer fundcount, Integer supportcount,
			Integer upcount, Integer repcount, String thumbnail, String pimage, String billstatus, Date firstdeposit,
			Date seconddeposit, Integer firstprice, Integer secondprice, String icomment, String checkacc) {
		super();
		this.pro_no = pro_no;
		this.ano = ano;
		this.pname = pname;
		this.pcontent = pcontent;
		this.category = category;
		this.psdate = psdate;
		this.s_psdate = s_psdate;
		this.pedate = pedate;
		this.s_pedate = s_pedate;
		this.pshort = pshort;
		this.ecost = ecost;
		this.refund = refund;
		this.pvideo = pvideo;
		this.pstatus = pstatus;
		this.likecount = likecount;
		this.sharelink = sharelink;
		this.bankcode = bankcode;
		this.accpnm = accpnm;
		this.accnum = accnum;
		this.cname = cname;
		this.cs_email = cs_email;
		this.cs_phone = cs_phone;
		this.fundamount = fundamount;
		this.fundcount = fundcount;
		this.supportcount = supportcount;
		this.upcount = upcount;
		this.repcount = repcount;
		this.thumbnail = thumbnail;
		this.pimage = pimage;
		this.billstatus = billstatus;
		this.firstdeposit = firstdeposit;
		this.seconddeposit = seconddeposit;
		this.firstprice = firstprice;
		this.secondprice = secondprice;
		this.icomment = icomment;
		this.checkacc = checkacc;
	}

	public Integer getPro_no() {
		return pro_no;
	}

	public void setPro_no(Integer pro_no) {
		this.pro_no = pro_no;
	}

	public Integer getAno() {
		return ano;
	}

	public void setAno(Integer ano) {
		this.ano = ano;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPcontent() {
		return pcontent;
	}

	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Date getPsdate() {
		return psdate;
	}

	public void setPsdate(Date psdate) {
		this.psdate = psdate;
	}

	public String getS_psdate() {
		return s_psdate;
	}

	public void setS_psdate(String s_psdate) {
		this.s_psdate = s_psdate;
	}

	public Date getPedate() {
		return pedate;
	}

	public void setPedate(Date pedate) {
		this.pedate = pedate;
	}

	public String getS_pedate() {
		return s_pedate;
	}

	public void setS_pedate(String s_pedate) {
		this.s_pedate = s_pedate;
	}

	public String getPshort() {
		return pshort;
	}

	public void setPshort(String pshort) {
		this.pshort = pshort;
	}

	public Integer getEcost() {
		return ecost;
	}

	public void setEcost(Integer ecost) {
		this.ecost = ecost;
	}

	public String getRefund() {
		return refund;
	}

	public void setRefund(String refund) {
		this.refund = refund;
	}

	public String getPvideo() {
		return pvideo;
	}

	public void setPvideo(String pvideo) {
		this.pvideo = pvideo;
	}

	public String getPstatus() {
		return pstatus;
	}

	public void setPstatus(String pstatus) {
		this.pstatus = pstatus;
	}

	public int getLikecount() {
		return likecount;
	}

	public void setLikecount(int likecount) {
		this.likecount = likecount;
	}

	public String getSharelink() {
		return sharelink;
	}

	public void setSharelink(String sharelink) {
		this.sharelink = sharelink;
	}

	public String getBankcode() {
		return bankcode;
	}

	public void setBankcode(String bankcode) {
		this.bankcode = bankcode;
	}

	public String getAccpnm() {
		return accpnm;
	}

	public void setAccpnm(String accpnm) {
		this.accpnm = accpnm;
	}

	public String getAccnum() {
		return accnum;
	}

	public void setAccnum(String accnum) {
		this.accnum = accnum;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCs_email() {
		return cs_email;
	}

	public void setCs_email(String cs_email) {
		this.cs_email = cs_email;
	}

	public String getCs_phone() {
		return cs_phone;
	}

	public void setCs_phone(String cs_phone) {
		this.cs_phone = cs_phone;
	}

	public Integer getFundamount() {
		return fundamount;
	}

	public void setFundamount(Integer fundamount) {
		this.fundamount = fundamount;
	}

	public Integer getFundcount() {
		return fundcount;
	}

	public void setFundcount(Integer fundcount) {
		this.fundcount = fundcount;
	}

	public Integer getSupportcount() {
		return supportcount;
	}

	public void setSupportcount(Integer supportcount) {
		this.supportcount = supportcount;
	}

	public Integer getUpcount() {
		return upcount;
	}

	public void setUpcount(Integer upcount) {
		this.upcount = upcount;
	}

	public Integer getRepcount() {
		return repcount;
	}

	public void setRepcount(Integer repcount) {
		this.repcount = repcount;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getPimage() {
		return pimage;
	}

	public void setPimage(String pimage) {
		this.pimage = pimage;
	}

	public String getBillstatus() {
		return billstatus;
	}

	public void setBillstatus(String billstatus) {
		this.billstatus = billstatus;
	}

	public Date getFirstdeposit() {
		return firstdeposit;
	}

	public void setFirstdeposit(Date firstdeposit) {
		this.firstdeposit = firstdeposit;
	}

	public Date getSeconddeposit() {
		return seconddeposit;
	}

	public void setSeconddeposit(Date seconddeposit) {
		this.seconddeposit = seconddeposit;
	}

	public Integer getFirstprice() {
		return firstprice;
	}

	public void setFirstprice(Integer firstprice) {
		this.firstprice = firstprice;
	}

	public Integer getSecondprice() {
		return secondprice;
	}

	public void setSecondprice(Integer secondprice) {
		this.secondprice = secondprice;
	}

	public String getIcomment() {
		return icomment;
	}

	public void setIcomment(String icomment) {
		this.icomment = icomment;
	}

	public String getCheckacc() {
		return checkacc;
	}

	public void setCheckacc(String checkacc) {
		this.checkacc = checkacc;
	}

	@Override
	public String toString() {
		return "Item [pro_no=" + pro_no + ", ano=" + ano + ", pname=" + pname + ", pcontent=" + pcontent + ", category="
				+ category + ", psdate=" + psdate + ", s_psdate=" + s_psdate + ", pedate=" + pedate + ", s_pedate="
				+ s_pedate + ", pshort=" + pshort + ", ecost=" + ecost + ", refund=" + refund + ", pvideo=" + pvideo
				+ ", pstatus=" + pstatus + ", likecount=" + likecount + ", sharelink=" + sharelink + ", bankcode="
				+ bankcode + ", accpnm=" + accpnm + ", accnum=" + accnum + ", cname=" + cname + ", cs_email=" + cs_email
				+ ", cs_phone=" + cs_phone + ", fundamount=" + fundamount + ", fundcount=" + fundcount
				+ ", supportcount=" + supportcount + ", upcount=" + upcount + ", repcount=" + repcount + ", thumbnail="
				+ thumbnail + ", pimage=" + pimage + ", billstatus=" + billstatus + ", firstdeposit=" + firstdeposit
				+ ", seconddeposit=" + seconddeposit + ", firstprice=" + firstprice + ", secondprice=" + secondprice
				+ ", icomment=" + icomment + ", checkacc=" + checkacc + "]";
	}

	
	
}
