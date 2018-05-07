package com.startrip.travelPlan.Dao.imp;


import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.member.MemberDao.MemberRepository;
import com.startrip.member.memberModle.MemberBean;
import com.startrip.travelPlan.Dao.ITripAllDao;
import com.startrip.travelPlan.Tool.HibernateUtil;
import com.startrip.travelPlan.controller.HibernateUtil_SQLServer;
import com.startrip.travelPlan.model.TravelAllBean;

@Repository
public class TravelAllDao implements ITripAllDao {
	
////測試-----	
//	SessionFactory sessionFactory = HibernateUtil_SQLServer.getSessionFactory();
////------

	
	@Autowired
	SessionFactory sessionFactory;
	
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	//找PK
	@Override
	public TravelAllBean TravelPrimayKey(TravelAllBean travelName) {
		return this.getSession().createQuery("FROM TravelAllBean where travelName='"+travelName+"'",TravelAllBean.class).getSingleResult();
	}

	@Override
	public TravelAllBean Select_TravelId(int id) {
		TravelAllBean bean = new TravelAllBean();
		bean = this.getSession().get(TravelAllBean.class, id);
		return bean;
		
	}

	private	static final String findAll = "FROM TravelAllBean";
	
	@SuppressWarnings("unchecked")
	@Override
	public List<TravelAllBean> selectAllTravel() {
		
		return this.getSession().createQuery(findAll).list();
		
	}

	@Override
	public void insert(TravelAllBean bean) {
//		MemberBean mb = getMail(bean.getMail());
//		bean.setMail(mai(l);
//		
		System.out.println(bean.toString());
		getSession().save(bean);
				
	}
	
	@Override
	public MemberBean getMail(String mail) {
		System.out.println(mail);
		MemberBean mb = null;
//		mb.setMail(mail);
		mb =getSession().get(MemberBean.class, mail);
		mb.toString();
		return mb;
		
	}

	@Override
	public void update(TravelAllBean bean) throws SQLException {
		String hql = "UPDATE TravelAllBean SET mail = :mail WHERE travelId = :travelId";
		System.out.println(bean.toString());
		getSession().createQuery(hql).setParameter("mail", bean.getMail())
									 .setParameter("travelId", bean.getTravelId()).executeUpdate();
		
		
		
		
	}

	@Override
	public void delete(Integer id) {
		TravelAllBean bean =getSession().get(TravelAllBean.class, id);
		this.getSession().delete(bean);;
	}

	//測試-----		
	public static void main (String args[]){
		HibernateUtil_SQLServer.getSessionFactory().getCurrentSession().beginTransaction();
			TravelAllDao dao = new TravelAllDao();
			TravelAllBean bean =  new TravelAllBean();
//			int days = 0;
//			Date fstart = null;
//			Date fend = null;
			try {
//			//----------------------------------------------
//				String start = "2018-5-5";
//				String end = "2018-5-8";
//				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//				fstart = new Date((sdf.parse(start)).getTime());
//				fend = new Date((sdf.parse(end)).getTime());
//		
//			} catch (ParseException e1) {
//				e1.printStackTrace();
//			}
//			days = (int) ((fend.getTime() - fstart.getTime()) / (1000 * 60 * 60 * 24));
//			System.out.println(days);
//			MemberRepository daom = new MemberRepository();
//			
//			bean.setMail("1@123");
//			bean.setTravelName("大屯山");
//			bean.setStartDate(fstart);
//			bean.setEndDate(fend);
//			bean.setTravelDays(days);
//			
//			try {
//				 System.out.println(bean.toString());
//			dao.insert(bean);
//			//-------------------------------------------
			
//			bean = dao.Select_TravelId(2);
//					 
//			System.out.println(bean.toString());		
			//----------------------------------------------------		 
//					 
//						bean.setTravelId(2);
//						bean.setMail("4@456");
//					 
//						try {
//							dao.update(bean);
//						} catch (SQLException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//						
//						
//					
//					 System.out.println(bean.toString());	
					 //-------------
//					 List<TravelAllBean> list= dao.selectAllTravel();
//					for(TravelAllBean result : list) {
//						System.out.println(result.toString());
//					}
//					dao.TravelPrimayKey(bean);
					
					bean.setTravelId(2);
					dao.delete(bean.getTravelId());
			HibernateUtil_SQLServer.getSessionFactory().getCurrentSession().getTransaction().commit();
			}finally {
				if(HibernateUtil_SQLServer.getSessionFactory()!=null) {
					HibernateUtil_SQLServer.close();
				}
			}
	}
	//--------------------------------------------------------------
	
}
