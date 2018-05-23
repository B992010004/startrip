package com.startrip.member.Service;


import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.startrip.member.MemberInterface.MemberRepositoryinterface;
import com.startrip.member.memberModle.MemberBean;

@Service
public class MemberService implements MemberServiceInterface {

	@Autowired
	private MemberRepositoryinterface memberDAO;

	@Transactional
	@Override
	public List<MemberBean> select() {
		return memberDAO.select();
	}

	@Transactional
	@Override
	public MemberBean select(String email) {
		return memberDAO.select(email);
	}
	@Transactional
	@Override
	public MemberBean selectbyid(int memberid) {
		return memberDAO.selectbyid(memberid);
	}
	@Transactional
	@Override
	public void update(MemberBean bean) {

		memberDAO.update(bean);

	}

	@Transactional
	@Override
	public Integer insert(MemberBean bean) {

		return memberDAO.insert(bean);
	}

	@Transactional
	@Override
	public boolean delete(String email) {
		return memberDAO.delete(email);
	}
	@Transactional
	@Override
	public void changepassword(String mail,String password) {
		MemberBean bean= memberDAO.select(mail);
		bean.setPassword(password);
		Timestamp outDate = new Timestamp(System.currentTimeMillis());
		bean.setRegisterDate(outDate);
		memberDAO.update(bean);		
	}
}
