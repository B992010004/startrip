package com.web.store.MemberDao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.MemberInterface.MemberRepositoryinterface;
import com.web.store.memberModle.MemberBean;


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

	@Override
	public MemberBean select(String mail) {
		MemberBean bean=null;
		Session session = factory.getCurrentSession();
		bean = session.get(MemberBean.class, mail);
		return  bean;
	}

	@Override
	public void update(String mail, String password, String username, String address, int phone, String birthday,
			String avatar) {
		String hql = "update MemberBean set   password=:password address=:address phone=:phone birthday=:birthday username=:username avatar=:avatar where mail =:mail";
		Session session = factory.getCurrentSession();
		session.createQuery(hql).setParameter("mail", mail).setParameter("password", password)
				.setParameter("address", address).setParameter("username", username).setParameter("birthday", birthday)
				.setParameter("password", password).setParameter("avatar", avatar).executeUpdate();

	}

	@Override
	public MemberBean insert(MemberBean bean) {
		Session session = factory.getCurrentSession();
		if (bean != null) {
			MemberBean temp = this.select(bean.getMail());
			if (temp == null) {
				session.save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public boolean delete(String email) {
		Session session = factory.getCurrentSession();
		MemberBean bean = this.select(email);
		if (bean != null) {
			session.delete(bean);
			return true;
		}
		return false;
	}
}
