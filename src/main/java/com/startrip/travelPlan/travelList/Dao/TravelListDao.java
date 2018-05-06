package com.startrip.travelPlan.travelList.Dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.HibernateUtil;
import com.startrip.travelPlan.travelAll.model.TravelAllBean;
import com.startrip.travelPlan.travelList.model.TravelListBean;
import com.startrip.travelPlan.travelList.model.TravelListPK;
import com.startrip.travelPlan.travelView.model.TravelViewBean;
@Repository
public class TravelListDao implements TravelListDaoInterface  {

//	//測試-----	
//		SessionFactory factory = HibernateUtil.getSessionFactory();
//	//------
	
	
	
	@Autowired
	SessionFactory factory;
	
	
	public TravelListDao(){
		
	}
	
	
	@Override
	public TravelListBean Select_PK(TravelListPK bean) {
		TravelListPK pk = new TravelListPK(bean.getViewid(), bean.getTravelId());
			Session session = factory.getCurrentSession();
			TravelListBean result = new TravelListBean();
			result = session.get(TravelListBean.class, pk);
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
	public void insert(TravelListBean bean) {
		Session session = factory.getCurrentSession();
		
		session.save(bean);
		
	}
//	public TravelViewBean getViewId(int viewId) {
//		TravelViewBean bean= factory.getCurrentSession().get(TravelViewBean.class, viewId);
//		return bean;
//	}
//	
//	public TravelAllBean getTravelId(int travelId) {
//		TravelAllBean bean= factory.getCurrentSession().get(TravelAllBean.class, travelId);
//		return bean;
//	}
	

	@Override
	public void update(TravelListBean bean) throws SQLException {
		Session session =factory.getCurrentSession();
		session.saveOrUpdate(bean);
	}

	@Override
	public void delete(TravelListBean bean) {
		
		TravelListPK pk = new TravelListPK(bean.getViewid(), bean.getTravelId());
		Session session = factory.getCurrentSession();
		session.delete(pk);
	}

	//測試-----		
	public static void main (String args[]){
		HibernateUtil.getSessionFactory().getCurrentSession().beginTransaction();
			TravelListDao dao = new TravelListDao();
			TravelListBean bean =  new TravelListBean();
			
			
			bean.setTravelId(1);
			bean.setViewid(1);
			bean.setTravelName("花蓮");
			bean.setTripday(5);
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
