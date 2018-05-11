package com.startrip.member.MemberInterface;

import java.sql.Blob;
import java.util.Date;
import java.util.List;

import com.startrip.member.memberModle.MemberBean;

public interface MemberRepositoryinterface {

	List<MemberBean> select();

	MemberBean select(String email);

	void update(String mail, String password, String username, String address, String phone, String birthday,
			String avatar,Blob photo,Date registerDate,String validataCode);
	
	void insert(MemberBean bean);

	boolean delete(String email);

	

}