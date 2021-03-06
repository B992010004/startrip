package com.startrip.member.Service;

import java.sql.Blob;
import java.util.List;

import com.startrip.member.memberModle.MemberBean;

public interface MemberServiceInterface {
	
	List<MemberBean> select();

	MemberBean select(String email);

	void update(String mail, String password, String username, String address, String phone, String birthday,
			String avatar ,Blob photo);

	void insert(MemberBean bean);

	boolean delete(String email);

}
