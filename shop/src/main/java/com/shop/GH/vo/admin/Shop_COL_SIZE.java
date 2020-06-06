package com.shop.GH.vo.admin;

import java.util.List;

public class Shop_COL_SIZE {
	private String PD_COLOR;
	private String PD_SIZE;
	private int PD_QUANTITY;
	private List<Shop_COL_SIZE> list;
	public String getPD_COLOR() {
		return PD_COLOR;
	}
	public void setPD_COLOR(String pD_COLOR) {
		PD_COLOR = pD_COLOR;
	}
	public String getPD_SIZE() {
		return PD_SIZE;
	}
	public void setPD_SIZE(String pD_SIZE) {
		PD_SIZE = pD_SIZE;
	}
	public int getPD_QUANTITY() {
		return PD_QUANTITY;
	}
	public void setPD_QUANTITY(int pD_QUANTITY) {
		PD_QUANTITY = pD_QUANTITY;
	}
	public List<Shop_COL_SIZE> getList() {
		return list;
	}
	public void setList(List<Shop_COL_SIZE> list) {
		this.list = list;
	}
	@Override
	public String toString() {
		return "Shop_COL_SIZE [PD_COLOR=" + PD_COLOR + ", PD_SIZE=" + PD_SIZE + ", PD_QUANTITY=" + PD_QUANTITY
				+ ", list=" + list + "]";
	}
	
		
}
