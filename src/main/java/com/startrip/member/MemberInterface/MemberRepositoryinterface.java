package com.startrip.member.MemberInterface;

import java.util.List;

import com.startrip.member.memberModle.MemberBean;

public interface MemberRepositoryinterface {

	List<MemberBean> select();

	MemberBean select(String email);

	void update(String mail, String password, String username, String address, int phone, String birthday,
			String avatar
	);

	void insert(MemberBean bean);

	boolean delete(String email);

}