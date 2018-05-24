package com.startrip.member.MemberInterface;

import java.util.List;

import com.startrip.member.memberModle.MemberBean;

public interface MemberRepositoryinterface {

	List<MemberBean> select();

	MemberBean select(String email);
	MemberBean selectbyid(int memberid);
	void update(MemberBean bean);
	
	Integer insert(MemberBean bean);

	boolean delete(String email);

	

}