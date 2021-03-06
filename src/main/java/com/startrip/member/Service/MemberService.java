package com.startrip.member.Service;

import java.sql.Blob;
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
	public void update(String mail, String password, String username, String address, String phone, String birthday,
			String avatar, Blob photo) {

		memberDAO.update(mail, password, username, address, phone, birthday, avatar, photo);

	}

	@Transactional
	@Override
	public void insert(MemberBean bean) {

		memberDAO.insert(bean);
	}

	@Transactional
	@Override
	public boolean delete(String email) {
		return memberDAO.delete(email);
	}

}
