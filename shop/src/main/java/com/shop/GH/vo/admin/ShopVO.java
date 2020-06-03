package com.shop.GH.vo.admin;

import java.util.ArrayList;
import java.util.Date;

public class ShopVO {
	private int C_NO;
	private String C_NAME;
	//
	private int SC_NO;
	private String SC_NAME;
	private int SC_NO_REF;	
	//
	private int PD_NO;
	private String PD_NAME;
	private int PD_CATEGORY_NO;
	private int PD_SUB_CATEGORY_NO;
	private int PD_PRICE;
	private String PD_IMG;
	private int PD_QUANTITY;
	private String PD_INFO;
	private int PD_READCOUNT;
	private Date PD_REGDATE;

	

	public int getC_NO() {
		return C_NO;
	}

	public void setC_NO(int c_NO) {
		C_NO = c_NO;
	}

	public String getC_NAME() {
		return C_NAME;
	}

	public void setC_NAME(String c_NAME) {
		C_NAME = c_NAME;
	}

	public int getSC_NO() {
		return SC_NO;
	}

	public void setSC_NO(int sC_NO) {
		SC_NO = sC_NO;
	}

	public String getSC_NAME() {
		return SC_NAME;
	}

	public void setSC_NAME(String sC_NAME) {
		SC_NAME = sC_NAME;
	}

	public int getSC_NO_REF() {
		return SC_NO_REF;
	}

	public void setSC_NO_REF(int sC_NO_REF) {
		SC_NO_REF = sC_NO_REF;
	}

	public int getPD_NO() {
		return PD_NO;
	}

	public void setPD_NO(int pD_NO) {
		PD_NO = pD_NO;
	}

	public String getPD_NAME() {
		return PD_NAME;
	}

	public void setPD_NAME(String pD_NAME) {
		PD_NAME = pD_NAME;
	}

	public int getPD_CATEGORY_NO() {
		return PD_CATEGORY_NO;
	}

	public void setPD_CATEGORY_NO(int pD_CATEGORY_NO) {
		PD_CATEGORY_NO = pD_CATEGORY_NO;
	}

	public int getPD_SUB_CATEGORY_NO() {
		return PD_SUB_CATEGORY_NO;
	}

	public void setPD_SUB_CATEGORY_NO(int pD_SUB_CATEGORY_NO) {
		PD_SUB_CATEGORY_NO = pD_SUB_CATEGORY_NO;
	}

	public int getPD_PRICE() {
		return PD_PRICE;
	}

	public void setPD_PRICE(int pD_PRICE) {
		PD_PRICE = pD_PRICE;
	}

	public String getPD_IMG() {
		return PD_IMG;
	}

	public void setPD_IMG(String pD_IMG) {
		PD_IMG = pD_IMG;
	}

	public int getPD_QUANTITY() {
		return PD_QUANTITY;
	}

	public void setPD_QUANTITY(int pD_QUANTITY) {
		PD_QUANTITY = pD_QUANTITY;
	}

	public String getPD_INFO() {
		return PD_INFO;
	}

	public void setPD_INFO(String pD_INFO) {
		PD_INFO = pD_INFO;
	}

	public int getPD_READCOUNT() {
		return PD_READCOUNT;
	}

	public void setPD_READCOUNT(int pD_READCOUNT) {
		PD_READCOUNT = pD_READCOUNT;
	}

	public Date getPD_REGDATE() {
		return PD_REGDATE;
	}

	public void setPD_REGDATE(Date pD_REGDATE) {
		PD_REGDATE = pD_REGDATE;
	}

	@Override
	public String toString() {
		return "ShopVO [C_NO=" + C_NO + ", C_NAME=" + C_NAME + ", SC_NO=" + SC_NO + ", SC_NAME=" + SC_NAME
				+ ", SC_NO_REF=" + SC_NO_REF + ", PD_NO=" + PD_NO + ", PD_NAME=" + PD_NAME + ", PD_CATEGORY_NO="
				+ PD_CATEGORY_NO + ", PD_SUB_CATEGORY_NO=" + PD_SUB_CATEGORY_NO + ", PD_PRICE=" + PD_PRICE + ", PD_IMG="
				+ PD_IMG + ", PD_QUANTITY=" + PD_QUANTITY + ", PD_INFO=" + PD_INFO + ", PD_READCOUNT=" + PD_READCOUNT
				+ ", PD_REGDATE=" + PD_REGDATE + "]";
	}

}
