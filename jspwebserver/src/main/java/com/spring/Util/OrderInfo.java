package com.spring.Util;

import java.sql.Date;
import java.sql.Time;

import java.util.List;

import com.spring.Model.OrderItemVO;

public class OrderInfo {

	private Date date;
	private int orderNum;
	private String id;
	private String fullMenu = "";
	private String count = "";
	private String size = "";
	private Date bDate;
	private String bTime;
	private String bellType;
	private int bellSound;
	private String region;
	private String userRegion;
	private String password;
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFullMenu() {
		return fullMenu;
	}
	public void setFullMenu(String fullMenu) {
		this.fullMenu = fullMenu;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	
	public void setInfo(List<OrderItemVO> list) {
		for(int j=0; j<list.size(); j++) {
			if(list.get(j).getType() != null) {
				if(list.get(j).getType().equals("H"))
					fullMenu += list.get(j).getName() + "(HOT),";
				else if(list.get(j).getType().equals("I"))
					fullMenu += list.get(j).getName() + "(ICE),";
				else
					fullMenu += list.get(j).getName();
			} else
				fullMenu += list.get(j).getName();
			
			count += list.get(j).getCount() + ",";
			if(list.get(j).getSize() != null)
				size += list.get(j).getSize() + ",";
			else
				size += "  ,";
		}
	}
	public Date getbDate() {
		return bDate;
	}
	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}
	public String getBellType() {
		return bellType;
	}
	public void setBellType(String bellType) {
		this.bellType = bellType;
	}
	public String getbTime() {
		return bTime;
	}
	public void setbTime(String bTime) {
		this.bTime = bTime;
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
