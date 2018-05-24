package com.startrip.transport.SeatList.SeatListController;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.startrip.transport.OrderList.OrderListModle.OrderListBean;
import com.startrip.transport.SeatList.SeatListModle.SeatListBean;

@Controller
public class SeatListController {
//我需要把SeatList表格中符合Trip(班次編號)欄位挑出--條件一
//接著把裡面訂單編號為空的座號取出傳到前端--條件二	
	@RequestMapping(value="insertSeatList" ,method = RequestMethod.GET)
public String insertSeatList(Model model, HttpServletRequest request, SeatListBean rdb) {
		
//		Session session = rdb;
		
		System.out.println(rdb);
		
		System.out.println("OrderListController 的 id :");
		return "/transport/select2";
	}
//我要把訂單編號寫入User選取的那一欄中	
	
	
	
}
