package com.startrip.transport.OrderList.Controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.startrip.transport.OrderList.OrderListModle.OrderListBean;
import com.startrip.transport.OrderList.Service.OrderListService;
import com.startrip.transport.OrderList.Service.OrderListServiceInterface;

@Controller
public class OrderListController {

	
	@Autowired
	OrderListServiceInterface OrderListService;
	@Autowired
	ServletContext context;
	
	
	@RequestMapping(value = "/insertOrerList", method = RequestMethod.GET)
	public String insertOrerList(Model model, HttpServletRequest request, OrderListBean rdb) {
	
//		System.out.println(rdb);
		
//		System.out.println("OrderListController 的 id :");
		return "/transport/select2";
	}


//-------------------------------------------------顯示訂單資訊
@RequestMapping(value = "/selectAllOrerList", method = RequestMethod.GET)
public String selectAllOrerList(Model model, HttpServletRequest request, OrderListBean rdb) {
		List<OrderListBean> all= OrderListService.select();
//	System.out.println("OrderListController 的 id :");
	model.addAttribute("OrerList", all);
	System.out.println("OrerListSelectAll="+all);
	return "/transport/OrerListSelectAll";
}



}
//我需要把姓名scName,身份證字號scId,信箱sMail,電話sPhone寫入OrerList表格中
//然後把orderNumber填入前面TripInfController選取到的SeatList表格那一欄裡面



