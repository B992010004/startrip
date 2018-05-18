package com.startrip.travelPlan.Dao.imp;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.travelPlan.Dao.ITravelListDao;
import com.startrip.travelPlan.controller.HibernateUtil_SQLServer;
import com.startrip.travelPlan.model.TravelListBean;
@Repository
public class TravelListDao implements ITravelListDao  {

//	//測試-----	
//		SessionFactory factory = HibernateUtil_SQLServer.getSessionFactory();
//	//------
	
	
	
	@Autowired
	SessionFactory factory;
	
	
	public TravelListDao(){
		
	}
	
	
	@Override
	public List<TravelListBean> Select_travellist(Integer travelId,Integer day) {
		String sql = "select * from TravelList where travelId=:travelId and tripday=:tripday  order by tripday asc,LEFT(starttime,2)";
			Session session = factory.getCurrentSession();
		List<TravelListBean> result = session.createNativeQuery(sql,TravelListBean.class)
				.setParameter("travelId", travelId)
				.setParameter("tripday", day)
				.getResultList();
		
			System.out.println(result);
		return result;
	}
	@Override
	public List<TravelListBean> select() {
		
		String hql = "FROM TravelListBean";
		List<TravelListBean> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = 	session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public Integer insert(TravelListBean bean) {
		Session session = factory.getCurrentSession();
		System.out.println(bean.toString());
		Integer pk =(int)session.save(bean);
		return pk;
	}

	

	@Override
	public void update(TravelListBean bean) throws SQLException {
		String hql = "UPDATE TravelAllBean SET travelName = :travelName WHERE listId = :listId";
		System.out.println(bean.toString());
		factory.getCurrentSession().createQuery(hql).setParameter("travelName", bean.getTravelName())
									 .setParameter("listId", bean.getListId()).executeUpdate();
	}

	@Override
	public void delete(Integer id) {
		
		
		Session session = factory.getCurrentSession();
		TravelListBean bean = session.get(TravelListBean.class, id);
		session.delete(bean);
	}

	public static void main (String args[]){
		HibernateUtil_SQLServer.getSessionFactory().getCurrentSession().beginTransaction();
			TravelListDao dao = new TravelListDao();
			TravelListBean bean =  new TravelListBean();
			try {
				
				List<TravelListBean> list= dao.Select_travellist(1,1);
				for(TravelListBean result : list) {
					System.out.println(result.toString());
				}
//			//----------------------------------------------
//			bean.set
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
					
//					bean.setTravelId(2);
//					dao.delete(bean.getTravelId());
			HibernateUtil_SQLServer.getSessionFactory().getCurrentSession().getTransaction().commit();
			}finally {
				if(HibernateUtil_SQLServer.getSessionFactory()!=null) {
					HibernateUtil_SQLServer.close();
				}
			}
	}
	//--------------------------------------------------------------


	@Override
	public List<TravelListBean> select_listday(Integer travelId, Integer tripday) {
		String sql="select * from travellist where  travelId=:travelId and tripday=:tripday";
		List<TravelListBean> list =factory.getCurrentSession().createNativeQuery(sql,TravelListBean.class)
				.setParameter("travelId", travelId)
				.setParameter("tripday", tripday).getResultList();
		return list;
	}


	@Override
	public TravelListBean select_lastlist(Integer travelId, Integer tripday) {
		String sql="select top(1) * from travellist where  travelId = :travelId and tripday=:tripday order by substring(endTime,1,2) DESC, substring(endTime,3,5)  DESC";
		TravelListBean tlb = factory.getCurrentSession().createNativeQuery(sql, TravelListBean.class)
				.setParameter("travelId", travelId).setParameter("tripday", tripday).getSingleResult();
		return tlb;
	}
}
