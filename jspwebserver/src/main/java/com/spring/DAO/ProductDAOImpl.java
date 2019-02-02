package com.spring.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.Model.ProductVO;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<ProductVO> productList(int kinds) {
		// TODO Auto-generated method stub
		switch(kinds) {
		case 1:
			return sqlSession.selectList("drink.productList");
		case 2:
			return sqlSession.selectList("congee.productList");
		case 3:
			return sqlSession.selectList("salad.productList");
		case 4:
			return sqlSession.selectList("soup.productList");
		case 5:
			return sqlSession.selectList("stew.productList");
		}
		return null;
		
	}

	@Override
	public void insertProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		switch(vo.getKinds()) {
		case 1:
			sqlSession.insert("drink.insertProduct", vo);
			break;
		case 2:
			sqlSession.insert("congee.insertProduct", vo);
			break;
		case 3:
			sqlSession.insert("salad.insertProduct", vo);
			break;
		case 4:
			sqlSession.insert("soup.insertProduct", vo);
			break;
		case 5:
			sqlSession.insert("stew.insertProduct", vo);
			break;
		}
	}

	@Override
	public void updateProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		if(vo.getImageURL() != null) {
			switch(vo.getKinds()) {
			case 1:
				sqlSession.update("drink.allUpdateProduct", vo);
				break;
			case 2:
				sqlSession.update("congee.allUpdateProduct", vo);
				break;
			case 3:
				sqlSession.update("salad.allUpdateProduct", vo);
				break;
			case 4:
				sqlSession.update("soup.allUpdateProduct", vo);
				break;
			case 5:
				sqlSession.update("stew.allUpdateProduct", vo);
				break;
			}
			
		}
		else {
			switch(vo.getKinds()) {
			case 1:
				sqlSession.update("drink.updateProduct", vo);
				break;
			case 2:
				sqlSession.update("congee.updateProduct", vo);
				break;
			case 3:
				sqlSession.update("salad.updateProduct", vo);
				break;
			case 4:
				sqlSession.update("soup.updateProduct", vo);
				break;
			case 5:
				sqlSession.update("stew.updateProduct", vo);
				break;
			}
			
		}
	}

	@Override
	public ProductVO searchProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		
		return sqlSession.selectOne("product.searchProduct", vo);
	}

	@Override
	public void deleteProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		switch(vo.getKinds()) {
		case 1:
			sqlSession.delete("drink.deleteProduct", vo);
			break;
		case 2:
			sqlSession.delete("congee.deleteProduct", vo);
			break;
		case 3:
			sqlSession.delete("salad.deleteProduct", vo);
			break;
		case 4:
			sqlSession.delete("soup.deleteProduct", vo);
			break;
		case 5:
			sqlSession.delete("stew.deleteProduct", vo);
			break;
		}
		
	}

	@Override
	public String searchProductId(String menu, int kind) {
		// TODO Auto-generated method stub
		String id = null;
		
		switch(kind) {
		case 1:
			id = sqlSession.selectOne("drink.searchId", menu);
			break;
		case 2:
			id = sqlSession.selectOne("congee.searchId", menu);
			break;
		case 3:
			id = sqlSession.selectOne("salad.searchId", menu);
			break;
		case 4:
			id = sqlSession.selectOne("soup.searchId", menu);
			break;
		case 5:
			id = sqlSession.selectOne("stew.searchId", menu);
			break;
		}
		return id;
	}

}
