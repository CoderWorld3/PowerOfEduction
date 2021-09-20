package com.Education.Dao;



import java.util.List;

import com.Education.Client.Login;

public interface CustomLoginDao {
	public List<Login> findLoginByUserName(String userName);

}
