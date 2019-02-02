package com.spring.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.DAO.ManagerDAOImpl;
import com.spring.DAO.OrderDAOImpl;
import com.spring.DAO.UserDAOImpl;
import com.spring.DAO.ManjobDAOImpl;
import com.spring.Model.ManagerVO;
import com.spring.Model.OrderVO;
import com.spring.Model.UserVO;
import com.spring.Model.OrderItemVO;
import com.spring.Model.ManjobVO;

@Service
public class UserServiceImpl implements UserService {
	
	@Inject
	OrderDAOImpl orderDao;
	
	@Inject
	UserDAOImpl userDao;
	
	@Inject
	ManjobDAOImpl manjobDao;

	@Override
	public List<OrderVO> getOrderList(int success) {
		// TODO Auto-generated method stub
		return orderDao.getOrderList(success);
	}

	public List<OrderVO> getOrderListTime(int success) {
		// TODO Auto-generated method stub
		return orderDao.getOrderListTime(success);
	}
	
	@Override
	public int insertOrder(OrderVO vo) {
		// TODO Auto-generated method stub
		return orderDao.insertOrder(vo);
	}

	@Override
	public void deleteOrder(OrderVO vo) {
		// TODO Auto-generated method stub
		orderDao.deleteOrder(vo);
	}

	@Override
	public int getNextOrderId() {
		// TODO Auto-generated method stub
		return orderDao.getNextOrderId();
	}

	@Override
	public void updateOrder(OrderVO vo) {
		// TODO Auto-generated method stub
		orderDao.updateOrder(vo);
	}

	@Override
	public List<UserVO> userList() {
		// TODO Auto-generated method stub
		return userDao.userList();
	}

	public List<UserVO> userList(HashMap map){
		return userDao.userList(map);
	}
	
	@Override
	public List<UserVO> manUserGender() {
		// TODO Auto-generated method stub
		return userDao.manUserGender();
	}
	
	@Override
	public UserVO searchUser(int userNum) {
		// TODO Auto-generated method stub
		return userDao.searchUser(userNum);
	}

	@Override
	public OrderVO searchOrder(int orderNum) {
		// TODO Auto-generated method stub
		return orderDao.searchOrder(orderNum);
	}
	
	@Override
	public void insertOrderItem(OrderItemVO vo) {
		// TODO Auto-generated method stub
		orderDao.insertOrderItem(vo);
	}

	@Override
	public List<OrderItemVO> getOrderItemList(int orderNum, int kind) {
		// TODO Auto-generated method stub
		return orderDao.getOrderItemList(orderNum, kind);
	}

	@Override
	public String searchUserId(int userNum) {
		// TODO Auto-generated method stub
		return userDao.searchUserId(userNum);
	}
	
	@Override
	public List<ManjobVO> manjob() {
		// TODO Auto-generated method stub
		return manjobDao.manjob();
	}
	
	public List<ManjobVO> manjob(HashMap map){
		return manjobDao.manjob(map);
	}
	
	public List<ManjobVO> jobsearch(HashMap map){
		return manjobDao.jobsearch(map);
	}
	
	@Override
	public List<ManjobVO> manjobGender() {
		// TODO Auto-generated method stub
		return manjobDao.manjobGender();
	}
	
	@Override
	public void insertManjob(ManjobVO vo) {
		// TODO Auto-generated method stub
		manjobDao.insertManjob(vo);
	}
	
	@Override
	public void updateManjob(ManjobVO vo) {
		// TODO Auto-generated method stub
		manjobDao.updateManjob(vo);
	}
	
	@Override
	public void deleteManjob(ManjobVO vo) {
		// TODO Auto-generated method stub
		manjobDao.deleteManjob(vo);
	}
}
