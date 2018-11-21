package com.dao;


import com.model.Recharge;

public interface InterfaceRechargeDao {

	int saveRecharge(Recharge r);
	int updateRecharge(Recharge r,int amount);
	int findAmount(long phoneNo);
	
}
