package com.spring.DAO;

import java.util.HashMap;
import java.util.List;

import com.spring.Model.UserVO;

public interface UserDAO {
	
	public List<UserVO> userList();
	
	public List<UserVO> manUserGender();
	
	public List<UserVO> userList(HashMap map);
	
	public UserVO searchUser(int userNum);
	
	public String searchUserId(int userNum);
}
