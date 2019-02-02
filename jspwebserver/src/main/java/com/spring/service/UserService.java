package com.spring.service;

import java.util.HashMap;
import java.util.List;
import com.spring.Model.ManagerVO;
import com.spring.Model.OrderVO;
import com.spring.Model.UserVO;
import com.spring.Model.OrderItemVO;
import com.spring.Model.ManjobVO;

public interface UserService {

	public List<OrderVO> getOrderList(int success);
	
	public List<OrderVO> getOrderListTime(int success);
	
	public int insertOrder(OrderVO vo);
	
	public void insertOrderItem(OrderItemVO vo);
	
	public List<OrderItemVO> getOrderItemList(int orderNum, int kind);
	
	public void deleteOrder(OrderVO vo);
	
	public void updateOrder(OrderVO vo);
	
	public OrderVO searchOrder(int orderNum);
	
	public int getNextOrderId();
	
	public List<UserVO> userList();
	
	public List<UserVO> manUserGender();
	
	public List<UserVO> userList(HashMap map);
	
	public String searchUserId(int userNum);
	
	public UserVO searchUser(int userNum);
	
	public List<ManjobVO> manjob();
	
	public List<ManjobVO> manjobGender();
	
	public List<ManjobVO> manjob(HashMap map);
	
	public List<ManjobVO> jobsearch(HashMap map);
	
	public void insertManjob(ManjobVO vo);
	
	public void updateManjob(ManjobVO vo);
	
	public void deleteManjob(ManjobVO vo);
}
