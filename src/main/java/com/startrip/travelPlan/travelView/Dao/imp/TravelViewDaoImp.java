package com.startrip.travelPlan.travelView.Dao.imp;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.travelPlan.travelView.Dao.TravelViewDao;
import com.startrip.travelPlan.travelView.exception.ViewNotFoundException;
import com.startrip.travelPlan.travelView.model.TravelViewBean;
@Repository
public class TravelViewDaoImp implements TravelViewDao {
	@Autowired
	SessionFactory factory;

	@Override
	public List<TravelViewBean> select() {
		String hql = "From TravelViewBean";
		Session session = factory.getCurrentSession();
		List<TravelViewBean> list = new ArrayList<>();
		list = session.createQuery(hql).getResultList();
		
		return list;
	}

	@Override
	public TravelViewBean select_ViewId(int viewId) {
		TravelViewBean bean = null;
		Session session = factory.getCurrentSession();
		bean = session.get(TravelViewBean.class, viewId);
		if(bean == null) throw new ViewNotFoundException(viewId);
		return bean;
	}


	@Override
	public void insert(TravelViewBean bean) {
		
		Session session  =factory.getCurrentSession();
		MemberBean mb = getMemberId(bean.getMail());
//		Set<viewSourceCollection> vsc = getImgId(bean.getViewImageId());
		bean.setMailBean(mb);;
//		bean.setImageIds(vsc);;
		session.save(bean);
		
	}
	
//	public viewSourceCollection getImgId(int imgId) {
//		viewSourceCollection id = null;
//		Session session=factory.getCurrentSession();
//		id=session.get(viewSourceCollection.class, imgId);
//		return id;
//	}
//	
	public MemberBean getMemberId(String memberId) {
		MemberBean id = null;
		Session session= factory.getCurrentSession();
		 id = session.get(MemberBean.class, memberId);
		return id;
		
	}

	@Override
	public void update(TravelViewBean bean) {
		Session session= factory.getCurrentSession();
		session.saveOrUpdate(bean);
		
		
	}

	@Override
	public void delete(int viewId) {
		Session session= factory.getCurrentSession();
		session.delete(viewId);
	}

	@Override
	public List<String> getAllOrgClass() {
		String hql = "SELECT DISTINCT orgclass From TravelViewBean ";
		List<String> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}
	
	public static void main (String[] args) {
		
	}

}
