package com.spring.DAO;

import java.util.HashMap;
import java.util.List;

import com.spring.Model.ManjobVO;
import com.spring.Model.OrderVO;

public interface ManjobDAO {
	
	public List<ManjobVO> manjob();
	
	public List<ManjobVO> manjobGender();
	
	public List<ManjobVO> manjob(HashMap map);
	
	public List<ManjobVO> jobsearch(HashMap map);
	
	void insertManjob(ManjobVO vo);
	
	void updateManjob(ManjobVO vo);
	
	void deleteManjob(ManjobVO vo);
}
