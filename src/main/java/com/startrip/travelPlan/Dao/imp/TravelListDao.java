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
		String sql = "select * from TravelList where travelId=:travelId and tripday=:tripday and state=1  order by tripday asc,LEFT(starttime,2)";
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
		
		String sql  = "insert into travellist (travelId,viewId,starttime,endtime,travelType,tripday,state,travelName,viewName) values(:travelId,:viewId,:starttime,:endtime,:travelType,:tripday,:state,:travelName,:viewName)";
		Session session = factory.getCurrentSession();
		System.out.println(bean.toString());
		session.createNativeQuery(sql, TravelListBean.class).setParameter("travelId", bean.getTravelId()).setParameter("viewId", bean.getViewid()).setParameter("starttime", bean.getStartTime())
		.setParameter("endtime", bean.getEndTime()).setParameter("travelType", bean.getTravelType()).setParameter("tripday", bean.getTripday())
		.setParameter("state", bean.getState()).setParameter("travelName", bean.getTravelName()).setParameter("viewName", bean.getViewName()).executeUpdate();
		return 1;
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
		String sql="select * from travellist where  travelId=:travelId and tripday=:tripday and state=1";
		List<TravelListBean> list =factory.getCurrentSession().createNativeQuery(sql,TravelListBean.class)
				.setParameter("travelId", travelId)
				.setParameter("tripday", tripday).getResultList();
		return list;
	}


	@Override
	public TravelListBean select_lastlist(Integer travelId, Integer tripday) {
		String sql="select top(1) * from travellist where  travelId = :travelId and tripday=:tripday and state=1 order by substring(endTime,1,2) DESC, substring(endTime,3,5)  DESC";
		TravelListBean tlb = factory.getCurrentSession().createNativeQuery(sql, TravelListBean.class)
				.setParameter("travelId", travelId).setParameter("tripday", tripday).getSingleResult();
		return tlb;
	}


	@Override
	public Integer update_ListState(Integer travelId, Integer tripday, String endtime) {
		System.out.println("DAO= "+travelId+","+tripday+","+endtime);
		String hql = "UPDATE TravelListBean SET state=:state where travelId=:travelId and tripday=:tripday and endTime=:endtime";
		Integer a =factory.getCurrentSession().createQuery(hql).setParameter("state", 0)
				.setParameter("travelId",travelId ).setParameter("tripday",tripday ).setParameter("endtime", endtime)
				.executeUpdate();
		
		
		return a;
	}


	@Override
	public String update_List(TravelListBean bean) {
		String sql = "Update travellist set starttime=:starttime ,endtime=:endtime where viewid=:viewid and tripday=:tripday and travelid=:travelid";
		factory.getCurrentSession().createNativeQuery(sql, TravelListBean.class)
		.setParameter("starttime", bean.getStartTime()).setParameter("endtime", bean.getEndTime()).setParameter("viewid", bean.getViewid())
		.setParameter("tripday", bean.getTripday()).setParameter("travelid", bean.getTravelId()).executeUpdate();
		return "success";
	}


	@Override
	public String updateListDay(Integer travelId, Integer travelListDay) {
		System.out.println("travellistDay ="+travelId+","+travelListDay);
		String sql = "  update TravelList set tripday=:prevtripday where travelId=:travelId and tripday=:tripday";
		factory.getCurrentSession().createNativeQuery(sql, TravelListBean.class)
		.setParameter("prevtripday", travelListDay-1).setParameter("travelId", travelId).setParameter("tripday", travelListDay).executeUpdate();
		
		return null;
	}
	
	@Override
	public String updateListDayState(Integer travelId, Integer travelListDay) {
		String sql = "  update TravelList set state=:state where travelId=:travelId and tripday=:tripday";
		factory.getCurrentSession().createNativeQuery(sql, TravelListBean.class)
		.setParameter("state", 0).setParameter("travelId", travelId).setParameter("tripday", travelListDay).executeUpdate();
		
		return null;
	}
	
}
