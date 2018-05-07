package com.startrip.travelPlan.travelView.Dao.imp;

import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.HibernateUtil;
import com.startrip.member.memberModle.MemberBean;
import com.startrip.travelPlan.travelAll.Dao.Imp.TravelAllDaoSpring;
import com.startrip.travelPlan.travelAll.model.TravelAllBean;
import com.startrip.travelPlan.travelMain.controller.HibernateUtil_SQLServer;
import com.startrip.travelPlan.travelView.Dao.TravelViewDao;
import com.startrip.travelPlan.travelView.exception.ViewNotFoundException;
import com.startrip.travelPlan.travelView.model.TravelViewBean;
@Repository
public class TravelViewDaoImp implements TravelViewDao {
	
//	//測試-----	
//		SessionFactory factory = HibernateUtil.getSessionFactory();
//	//------
//	
	
	
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
		MemberBean mb = getMail(bean.getMail());
		bean.setViewMail(mb);
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
	public MemberBean getMail(String mail) {
		MemberBean id = null;
		Session session= factory.getCurrentSession();
		 id = session.get(MemberBean.class, mail);
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
	
	//測試-----		
	public static void main (String args[]){
		HibernateUtil.getSessionFactory().getCurrentSession().beginTransaction();
			TravelViewDaoImp dao = new TravelViewDaoImp();
			TravelViewBean bean =  new TravelViewBean();
			
			
			
			bean.setMail("1@123");
			bean.setViewName("大屯山");
			bean.setViewaddr("台北");
			
			try {
				 System.out.println(bean.toString());
			dao.insert(bean);
//			
//			
//					 bean = dao.Select_TravelId(1);
//					 System.out.println(bean.toString());
//					 
//					 bean.setMail("456@gamil.com");
//					 try {
//						bean.toString();
//						dao.update(bean);
//					} catch (SQLException e) {
//						e.printStackTrace();
//					}
//					 List<TravelAllBean> list= dao.selectAllTravel();
//					for(TravelAllBean result : list) {
//						System.out.println(result.toString());
//					}
////					dao.TravelPrimayKey(bean);
					
					
//					System.out.println(bean.getTravelId());
//					dao.delete(bean.getTravelId());
			HibernateUtil.getSessionFactory().getCurrentSession().getTransaction().commit();
			}finally {
				if(HibernateUtil.getSessionFactory()!=null) {
					HibernateUtil.close();
				}
			}
	}
	//--------------------------------------------------------------
}
