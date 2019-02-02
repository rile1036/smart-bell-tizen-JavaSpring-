package com.spring.Model;

import java.sql.Date;

public class OrderVO {

	private int orderNum;
	private Date orderDate;
	private int userNum;	
	private int totalPrice;
	private int complete;
	private Date bDate;
	private String bTime;
	private String bellType;
	private int bellSound;
	private String region;
	private String userRegion;
	private String password;
	
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getComplete() {
		return complete;
	}
	public void setComplete(int complete) {
		this.complete = complete;
	}
	public Date getbDate() {
		return bDate;
	}
	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}
	public String getbTime() {
		return bTime;
	}
	public void setbTime(String bTime) {
		this.bTime = bTime;
	}
	public String getBellType() {
		return bellType;
	}
	public void setBellType(String bellType) {
		this.bellType = bellType;
	}
	public int getBellSound() {
		return bellSound;
	}
	public void setBellSound(int bellSound) {
		this.bellSound = bellSound;
	}
	public String getRegion() {	
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getUserRegion() {
		return userRegion;
	}
	public void setUserRegion(String userRegion) {
		this.userRegion = userRegion;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
