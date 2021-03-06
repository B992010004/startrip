package com.startrip.travelPlan.Dao.imp;

import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.member.memberModle.MemberBean;
import com.startrip.travelPlan.Dao.ITravelViewDao;
import com.startrip.travelPlan.Tool.HibernateUtil;
import com.startrip.travelPlan.controller.HibernateUtil_SQLServer;
import com.startrip.travelPlan.exception.ViewNotFoundException;
import com.startrip.travelPlan.model.TravelAllBean;
import com.startrip.travelPlan.model.TravelViewBean;
@Repository
public class TravelViewDao implements ITravelViewDao {
//	
//	//測試-----	
//		SessionFactory factory = HibernateUtil_SQLServer.getSessionFactory();
//	//------
	
	
	
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
		MemberBean mb = getMemberId(bean.getMemberId());
		bean.setMemberId(mb.getMemberid());
		System.out.println(bean.toString());
		session.save(bean);
		
	}
	
//	public viewSourceCollection getImgId(int imgId) {
//		viewSourceCollection id = null;
//		Session session=factory.getCurrentSession();
//		id=session.get(viewSourceCollection.class, imgId);
//		return id;
//	}
//	
	@Override
	public MemberBean getMemberId(Integer id) {
		MemberBean bean = null;
		Session session= factory.getCurrentSession();
		bean = session.get(MemberBean.class, id);
		
		return bean;
		
	}

	@Override
	public void update(TravelViewBean bean) {
		String hql = "UPDATE TravelAllBean SET viewName = :viewName WHERE viewId = :viewId";
		System.out.println(bean.toString());
		factory.getCurrentSession().createQuery(hql).setParameter("viewName", bean.getViewName())
									 .setParameter("viewId", bean.getViewid()).executeUpdate();
		
		
		
		
	}

	@Override
	public void delete(int viewId) {
		Session session= factory.getCurrentSession();
		TravelViewBean bean =session.get(TravelViewBean.class, viewId);
		session.delete(bean);
	}

	@Override
	public List<String> getAllOrgClass() {
		String hql = "SELECT DISTINCT orgclass From TravelViewBean ";
		List<String> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql).list();
		return list;
	}
	@Override
	public List<TravelViewBean> getAddress(String address){
		String sql = "Select * from TravelView where viewaddr like '%"+address+"%'";
		List<TravelViewBean> list = new ArrayList<>();
		 list =factory.getCurrentSession().createNativeQuery(sql,TravelViewBean.class).getResultList();
		return list;
	}
	
	
	
	
	//測試-----		
	public static void main (String args[]){
		HibernateUtil_SQLServer.getSessionFactory().getCurrentSession().beginTransaction();
			TravelViewDao dao = new TravelViewDao();
			TravelViewBean bean =  new TravelViewBean();
			try {
				List<TravelViewBean> list  =dao.getAddress("海岸");
			if(list.isEmpty()) {
				System.out.println("null");
			}
			for(TravelViewBean bean1 :list) {
//				TravelViewBean tvb = (TravelViewBean)bean1;
				System.out.println("bean = "+bean1.getViewName());
			}
//			
//			bean.setMemberId(1);
//			bean.setViewName("大屯山");
//			bean.setViewaddr("台北");
//			
//			try {
//				 System.out.println(bean.toString());
//			dao.insert(bean);
//			
//			
//					 bean = dao.select_ViewId(2);
//					 System.out.println(bean.toString());
//					 
//					
//					 bean.toString();
//					dao.update(bean);
					
					
//					System.out.println(bean.getTravelId());
//					dao.delete(bean.getTravelId());
			HibernateUtil_SQLServer.getSessionFactory().getCurrentSession().getTransaction().commit();
			}finally {
				if(HibernateUtil_SQLServer.getSessionFactory()!=null) {
					HibernateUtil_SQLServer.close();
				}
			}
	}
	//--------------------------------------------------------------
}
