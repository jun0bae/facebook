package com.myfacebook.facebook.model;

public class RequestDTO {
private int unum;
private int request_unum;
private int reg_date;

public int getRequest_unum() {
	return request_unum;
}
public void setRequest_unum(int request_unum) {
	this.request_unum = request_unum;
}
public int getUnum() {
	return unum;
}
public void setUnum(int unum) {
	this.unum = unum;
}
public int getReg_date() {
	return reg_date;
}
public void setReg_date(int reg_date) {
	this.reg_date = reg_date;
}

}
