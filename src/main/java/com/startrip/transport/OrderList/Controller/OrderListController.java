package com.startrip.transport.OrderList.Controller;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.startrip.transport.OrderList.OrderListModle.OrderListBean;

@Controller
public class OrderListController {

	@RequestMapping(value = "/insertOrerList", method = RequestMethod.GET)
	public String insertOrerList(Model model, HttpServletRequest request, OrderListBean rdb) {
		
//		Session session = rdb;
		
		System.out.println(rdb);
		
		System.out.println("OrderListController 的 id :");
		return "/transport/select2";
	}

}
