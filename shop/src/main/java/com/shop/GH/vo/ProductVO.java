package com.shop.GH.vo;

import java.util.Date;

public class ProductVO {
	private int PD_NO; //상품 번호
	private String PD_NAME; //상품 이름
	private int PD_CATEGORY_NO; //카테고리 넘버
	private int PD_SUB_CATEGORY_NO; //카테고리 넘버
	private int PD_PRICE; //가격
	private String PD_IMG; //메인 사진 이름
	private int P_QUANTITY; //재고수량
	private String P_INFO; //상품 설명
	private int P_READCOUNT; // 상품 조회수
	private Date P_REGDATE; //상품 추가 날짜
	
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
	public int getP_QUANTITY() {
		return P_QUANTITY;
	}
	public void setP_QUANTITY(int p_QUANTITY) {
		P_QUANTITY = p_QUANTITY;
	}
	public String getP_INFO() {
		return P_INFO;
	}
	public void setP_INFO(String p_INFO) {
		P_INFO = p_INFO;
	}
	public int getP_READCOUNT() {
		return P_READCOUNT;
	}
	public void setP_READCOUNT(int p_READCOUNT) {
		P_READCOUNT = p_READCOUNT;
	}
	public Date getP_REGDATE() {
		return P_REGDATE;
	}
	public void setP_REGDATE(Date p_REGDATE) {
		P_REGDATE = p_REGDATE;
	}	
}
