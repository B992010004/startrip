package com.startrip.travelPlan.travelAll.Dao.Imp;


import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.HibernateUtil;
import com.startrip.member.MemberDao.MemberRepository;
import com.startrip.member.memberModle.MemberBean;
import com.startrip.travelPlan.travelAll.Dao.TripAllDaoSpringI;
import com.startrip.travelPlan.travelAll.model.TravelAllBean;
import com.startrip.travelPlan.travelMain.controller.HibernateUtil_SQLServer;

@Repository
public class TravelAllDaoSpring implements TripAllDaoSpringI {
	
//測試-----	
	SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
//------

	
//	@Autowired
//	SessionFactory sessionFactory;
	
	
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
		
		this.getSession().saveOrUpdate(bean);
		
		
	}

	@Override
	public void delete(Integer id) {
		
		this.getSession().delete(id);
	}

	//測試-----		
	public static void main (String args[]){
		HibernateUtil.getSessionFactory().getCurrentSession().beginTransaction();
			TravelAllDaoSpring dao = new TravelAllDaoSpring();
			TravelAllBean bean =  new TravelAllBean();
			int days = 0;
			Date fstart = null;
			Date fend = null;
			try {
			//----------------------------------------------
				String start = "2018-5-5";
				String end = "2018-5-8";
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				fstart = new Date((sdf.parse(start)).getTime());
				fend = new Date((sdf.parse(end)).getTime());
		
			} catch (ParseException e1) {
				e1.printStackTrace();
			}
			days = (int) ((fend.getTime() - fstart.getTime()) / (1000 * 60 * 60 * 24));
			System.out.println(days);
			bean.setMail("1@123");
			bean.setTravelName("大屯山");
			bean.setStartDate(fstart);
			bean.setEndDate(fend);
			bean.setTravelDays(days);
			
			try {
				 System.out.println(bean.toString());
			dao.insert(bean);
//			//-------------------------------------------
			
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
//					
//					
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
