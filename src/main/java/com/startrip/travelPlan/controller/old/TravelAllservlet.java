package com.startrip.travelPlan.controller.old;
//package com.startrip.travelPlan.travelAll.controller;
//
//import java.io.IOException;
//import java.util.HashMap;
//import java.util.Map;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.startrip.travelPlan.travelAll.Dao.TravelAllDAO;
//import com.startrip.travelPlan.travelAll.model.TravelAllBean;
//
//@WebServlet("/TripAllservlet")
//public class TravelAllservlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		request.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html; charset=UTF-8");
//		
//		Map<String, String> errorMsg = new HashMap<String, String>();
//		request.setAttribute("MsgMap", "erroMsg");
//		Map<String, String> msgOK = new HashMap<String, String>();
//		request.setAttribute("MsgOK", "msgOK");
////		
////		//取得登入資料
////		HttpSession session = request.getSession(false);
////		//取得login的資料
////		MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
////		String memberid = mb.getMid();
////		request.setAttribute("memberid", memberid);
//		
//		//int tripid;
//		
//		
//		String tripName=request.getParameter("tripName");
//		
//		String startDate = request.getParameter("StartDate");
//		java.sql.Date start= java.sql.Date.valueOf(startDate);
//		
//		String endDate = request.getParameter("endDate");
//		java.sql.Date end = java.sql.Date.valueOf(endDate);
//		
//		int tripDays =(int)((end.getTime()-start.getTime())/1000/60/60/24);
//		//驗證
//		if(tripName==null||tripName.length()==0) {
//			errorMsg.put("nameIsEmpty", "請輸入行程名稱");
//		}
//		
//		if(!errorMsg.isEmpty()) {
//		RequestDispatcher rd = request.getRequestDispatcher("CreateTrip");
//		rd.forward(request, response);
//		}
//		
//		try {
//			TravelAllDAO dao = new TravelAllDAO();
//			
//			TravelAllBean bean =new TravelAllBean(tripName,start,end,tripDays);
//			bean = dao.insert(bean);
//			
//			msgOK.put("insertOK", "新增成功");
//			response.sendRedirect("index.jsp");
//			return;
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//	}
//
//	
//	
//
//}
