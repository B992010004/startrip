package com.web.store.MemberInterface;

import java.util.List;

import com.web.store.memberModle.MemberBean;

public interface MemberRepositoryinterface {

	List<MemberBean> select();

	MemberBean select(String email);

	void update(String mail, String password, String username, String address, int phone, String birthday,
			String avatar
	);

	MemberBean insert(MemberBean bean);

	boolean delete(String email);

}