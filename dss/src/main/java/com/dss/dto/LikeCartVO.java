package com.dss.dto;

import java.util.Date;

public class LikeCartVO {
	int cseq, pseq, quantity, number, price2;
	public int getPrice2() {
		return price2;
	}
	public void setPrice2(int price2) {
		this.price2 = price2;
	}
	String id, result, mname, pname;
	Date indate;
	public int getCseq() {
		return cseq;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public void setCseq(int cseq) {
		this.cseq = cseq;
	}
	public int getPseq() {
		return pseq;
	}
	public void setPseq(int pseq) {
		this.pseq = pseq;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public Date getIndate() {
		return indate;
	}
	public void setIndate(Date indate) {
		this.indate = indate;
	}
	@Override
	public String toString() {
		return "LikeCartVO [cseq=" + cseq + ", pseq=" + pseq + ", quantity=" + quantity + ", number=" + number + ", id="
				+ id + ", result=" + result + ", indate=" + indate + "]";
	}
	
	
}
