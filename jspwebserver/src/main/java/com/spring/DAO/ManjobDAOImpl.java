package com.spring.DAO;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.Model.ManagerVO;
import com.spring.Model.ManjobVO;
import com.spring.Model.OrderVO;
import com.spring.Model.UserVO;

@Repository
public class ManjobDAOImpl implements ManjobDAO {

	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<ManjobVO> manjob() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("job.manjob");
	}
	
	@Override
	public List<ManjobVO> manjobGender() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("job.manjobGender");
	}
	
	@Override
	public List<ManjobVO> manjob(HashMap map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("job.select", map);
	}
	
	@Override
	public List<ManjobVO> jobsearch(HashMap map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("job.jobselect", map);
	}
	
	@Override
	public void insertManjob(ManjobVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert("job.insertManjob", vo);
	}
	
	@Override
	public void updateManjob(ManjobVO vo) {
		// TODO Auto-generated method stub
		sqlSession.update("job.updateManjob", vo);
	}
	
	@Override
	public void deleteManjob(ManjobVO vo) {
		// TODO Auto-generated method stub
		sqlSession.delete("job.deleteManjob", vo);
	}
}
