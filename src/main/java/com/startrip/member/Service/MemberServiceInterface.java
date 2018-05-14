package com.startrip.member.Service;


import java.util.List;

import com.startrip.member.memberModle.MemberBean;

public interface MemberServiceInterface {
	
	List<MemberBean> select();

	MemberBean select(String email);

	void update(MemberBean bean);

	void insert(MemberBean bean);

	boolean delete(String email);

	void changepassword(String mail, String password);

}
