package com.startrip.member.MemberDao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.member.MemberInterface.MemberRepositoryinterface;
import com.startrip.member.memberModle.MemberBean;

@Repository
public class MemberRepository implements MemberRepositoryinterface {

	@Autowired
	SessionFactory factory;

	@SuppressWarnings("unchecked")
	@Override
	public List<MemberBean> select() {
		String hql = "FROM MemberBean";
		Session session = null;
		List<MemberBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public MemberBean select(String mail) {

		String hql = "FROM MemberBean where mail =:mail ";
		Session session = null;
		List<MemberBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).setParameter("mail", mail).getResultList();
		if (list.size() == 0) {
			return null;
		} else {
			return list.get(0);
		}
	}
	@SuppressWarnings("unchecked")
	@Override
	public MemberBean selectbyid(int memberid) {

		String hql = "FROM MemberBean where memberid =:memberid ";
		Session session = null;
		List<MemberBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).setParameter("memberid", memberid).getResultList();
		if (list.size() == 0) {
			return null;
		} else {
			return list.get(0);
		}
	}

	@Override
	public void update(MemberBean bean) {
		Session session = factory.getCurrentSession();
		session.update(bean);

	}

	@Override
	public void insert(MemberBean bean) {
		Session session = factory.getCurrentSession();
		session.save(bean);
	}

	@Override
	public boolean delete(String email) {
		Session session = factory.getCurrentSession();
		MemberBean bean = select(email);
		if (bean != null) {
			session.delete(bean);
			return true;
		}
		return false;
	}
}
