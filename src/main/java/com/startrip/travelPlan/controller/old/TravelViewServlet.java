package com.startrip.travelPlan.controller.old;
//package com.startrip.travelPlan.travelView.controller;
//
//import java.io.FileOutputStream;
//import java.io.IOException;
//import java.io.InputStream;
//import java.nio.file.Files;
//import java.nio.file.Path;
//import java.nio.file.Paths;
//import java.sql.Timestamp;
//import java.text.SimpleDateFormat;
//import java.util.Collection;
//import java.util.HashMap;
//import java.util.Map;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import javax.servlet.http.Part;
//
//import org.springframework.stereotype.Controller;
//
//import com.startrip.travelPlan._trip.model.MemberBean;
//import com.startrip.travelPlan._trip_tool.GlobalService;
//@Controller
//public class TravelViewServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	@Override
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html; charset=UTF-8");
//		Map<String, String> errorMsg = new HashMap<String, String>();
//		Map<String, String> msgOK = new HashMap<String, String>();
//		
//		
//		request.setAttribute("MsgMap", "erroMsg");
//		request.setAttribute("MsgOK", "msgOK");
//
//		int viewid = 0;
//		String imageSource ="";
//		String imagename="";
//		int memberid=0;
//		String viewName ="";
//		String viewQuery ="";
//		String viewPicQuery ="";
//		String viewadr ="";
//		String viewWeb ="";
//		String viewPhone ="";
//		String viewOpenTime ="";
//		String coordx ="";
//		String coordy ="";
//		Timestamp tdate=null;
//		String fileName = "";
//		long sizeInByte = 0;
//		InputStream is = null;
//		
//		 HttpSession session = request.getSession(false);
//		 MemberBean mb = (MemberBean) session.getAttribute("LoginOK");
//		 memberid =Integer.parseInt(mb.getMid());
//		 request.setAttribute("memberid", memberid);
//		 
//		 Timestamp ts=new Timestamp(System.currentTimeMillis());
//		tdate = Timestamp.valueOf(new SimpleDateFormat("yyyyMMddhhmmss").format(ts));
//		
//		Collection<Part> parts = request.getParts();
//		GlobalService.exploreParts(parts, request);// 印出part的所有東西
//		
//		if (parts != null) {
//			int count=1;
//			for (Part p : parts) {
//				String fldName = p.getName();
//				System.out.println("fldName=" + fldName);
//				String value = request.getParameter(fldName);
//
//				if (p.getContentType() == null) {
//				
//					if (fldName.equals("viewName")) {
//						viewName = value;
//						if(value==null) {
//							System.out.print("null");
//						}else {
//						request.setAttribute("name", viewName);
//						}
//					} else if (fldName.equals("viewadr")) {
//						viewadr = value;
//						if(value==null) {
//							System.out.print("null");
//						}else {
//						request.setAttribute("address", viewadr);
//						}
//					}  else if (fldName.equals("viewWeb")) {
//						viewWeb = value;
//						System.out.print("web");
//						if(value==null) {
//							System.out.print("null");
//							}else {
//						request.setAttribute("web", viewWeb);
//						}
//					} else if (fldName.equals("phone")) {
//						viewPhone = value;
//						if(value==null) {
//							System.out.print("null");
//						}else {
//						request.setAttribute("phone", viewPhone);
//						}
//					}else if (fldName.equals("viewOpenTime")) {
//						viewOpenTime = value;
//						if(value==null) {
//							System.out.print("null");
//						}else {
//						request.setAttribute("main", viewOpenTime);
//						}
//					}
//				} else {
//					
//					fileName = GlobalService.getFileName(p);
//
//					String f = fileName.substring(fileName.lastIndexOf("."), fileName.length());
//			
//		
//					if (fileName != null && fileName.trim().length() > 0) {
//						sizeInByte = p.getSize();
//						is = p.getInputStream();
//						
//						String area = viewadr.substring(0, 2);
//						String saveDir=getServletContext().getRealPath("/")+"images\\clients\\"+area+"_"+viewName;
//					
//						int len;
//						Path mir =Paths.get(saveDir); 
//						//判斷有無資料夾
//						if(Files.exists(mir)) {
//							System.out.println("exist");
//						}else if(!Files.exists(mir) ){
//							Files.createDirectory(mir);
//						}
//					
//						fileName = area+"_"+viewName;
//						imagename=fileName;
//						
//						String outputPath = saveDir+"\\"+fileName;
//						
//						FileOutputStream fos=new FileOutputStream(outputPath);
//						System.out.println(outputPath);
//						
//						byte[] b= new byte[8192];
//						while((len=is.read(b))!=-1) {
//							fos.write(b,0,len);
//							
//						}
//						fos.flush();
//						fos.close();
//					} else {
//						errorMsg.put("errpicture", "請放入圖片檔");
//					}
//					
//					
//					
//				}
//			}
//		}
//	}//dopostEnd
//}
