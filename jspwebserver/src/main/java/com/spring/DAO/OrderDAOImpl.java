package com.spring.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.Model.OrderVO;
import com.spring.Model.UserVO;
import com.spring.Model.OrderItemVO;

@Repository
public class OrderDAOImpl implements OrderDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<OrderVO> getOrderList(int success) {
		// TODO Auto-generated method stub
		if(success == 1)
			return sqlSession.selectList("order.orderList", 1);
		else if(success == 0)
			return sqlSession.selectList("order.orderList", 0);
		
		return null;
	}

	public List<OrderVO> getOrderListTime(int success) {
		// TODO Auto-generated method stub
		if(success == 1)
			return sqlSession.selectList("order.orderListTime", 1);
		else if(success == 0)
			return sqlSession.selectList("order.orderListTime", 0);
		
		return null;
	}
	
	@Override
	public int insertOrder(OrderVO vo) {
		// TODO Auto-generated method stub
		System.out.println(vo.getBellType());
		if(vo.getBellType().equals("CS")) {
			sqlSession.insert("order.insertBell", vo);
			sqlSession.insert("order.insertPassword", vo);
		}
		else if(vo.getBellType().equals("S")) {
			sqlSession.insert("order.insertBell", vo);
		}
		else if(vo.getBellType().equals("C")) {
			sqlSession.insert("order.insertPassword", vo);
		}
		return sqlSession.insert("order.insertOrder", vo);
	}

	@Override
	public void deleteOrder(OrderVO vo) {
		// TODO Auto-generated method stub
		sqlSession.delete("order.deleteOrder", vo);
	}

	@Override
	public int getNextOrderId() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("order.getNextOrderId", null);
	}

	@Override
	public void updateOrder(OrderVO vo) {
		// TODO Auto-generated method stub
		sqlSession.update("order.updateOrder", vo);
		
	}

	@Override
	public OrderVO searchOrder(int orderNum) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("order.searchOrder", orderNum);
	}

	@Override
	public void insertOrderItem(OrderItemVO vo) {
		// TODO Auto-generated method stub		
		switch(vo.getKind()) {
		case 1:
			sqlSession.insert("order.insertDrinkItem", vo);
			break;
		case 2:
			sqlSession.insert("order.insertCongeeItem", vo);
			break;
		case 3:
			sqlSession.insert("order.insertSaladItem", vo);
			break;
		case 4:
			sqlSession.insert("order.insertSoupItem", vo);
			break;
		case 5:
			sqlSession.insert("order.insertStewItem", vo);
			break;
		default:
			break;
		}
	}

	@Override
	public List<OrderItemVO> getOrderItemList(int orderNum, int kind) {
		// TODO Auto-generated method stub
		switch(kind) {
		case 1:
			return sqlSession.selectList("order.drinkItemList", orderNum);
		case 2:
			return sqlSession.selectList("order.congeeItemList", orderNum);
		case 3:
			return sqlSession.selectList("order.saladItemList", orderNum);
		case 4:
			return sqlSession.selectList("order.soupItemList", orderNum);
		case 5:
			return sqlSession.selectList("order.stewItemList", orderNum);
		default:
			break;
		}
		return null;
	}
	
	public List<OrderVO> userList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("order.userList");
	}

}
