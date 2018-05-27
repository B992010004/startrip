package com.startrip.hotel.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.startrip.hotel.model.HotelOrder;
import com.startrip.hotel.model.Rooms;
import com.startrip.hotel.model.SearchHotel;
import com.startrip.hotel.service.HotelOrderServiceInterface;
import com.startrip.hotel.service.RoomsServiceInterface;
import com.startrip.member.Service.MemberServiceInterface;
import com.startrip.member.memberModle.MemberBean;

import allPay.payment.integration.AllInOne;
import allPay.payment.integration.domain.AioCheckOutALL;
import allPay.payment.integration.domain.InvoiceObj;
import allPay.payment.integration.exception.AllPayException;

@Controller
public class HotelPaymentController {

	@Autowired
	RoomsServiceInterface roomsServiceInterface;

	@Autowired
	MemberServiceInterface memberservice;

	@Autowired
	HotelOrderServiceInterface hotelOrderServiceInterface;

	@RequestMapping(value = "/frontEnd/aioCheckOut/aioCheckOutALL/{hotelId}/{roomType}", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutALL(@PathVariable Integer hotelId, @PathVariable Integer roomType,
			HotelOrder order, HttpServletRequest request) throws ParseException {

		// session裡儲存的搜尋字串
		HttpSession session = request.getSession();
		SearchHotel searchBean = (SearchHotel) session.getAttribute("searchBean");

		Integer memberPk = null;
		MemberBean memberBean = (MemberBean) session.getAttribute("LoginOK");
		// 如果沒加入會員加入會員
		if (memberBean == null) {
			if (order.getPassword() != null) {
				MemberBean newMemberBean = new MemberBean();
				newMemberBean.setFirstname(order.getFirstname());
				newMemberBean.setLastname(order.getLastname());
				newMemberBean.setMail(order.getEmail());
				newMemberBean.setPassword(order.getPassword());
				newMemberBean.setPhone(order.getCellphone());
				newMemberBean.setPhoto(null);
				newMemberBean.setAvatar("user.jpg");
				memberPk = memberservice.insert(newMemberBean);
			}
		} else {
			memberPk = memberBean.getMemberid();
		}

		// 待完成
		// 如果帳號存在驗證密碼

		// 房型資訊
		// 依照選定數量找出roomid
		// 目前groupByType未完成
		List<Rooms> roomList = roomsServiceInterface.selectByHotelIdGroupByType(hotelId);
		Rooms room = roomList.get(0);

		String orderNo = UUID.randomUUID().toString().replace("-", "").substring(0, 20);
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		String orderDate = sdf.format(date);
		String itemName = room.getRoomname();
		int totalAmount = room.getBasicprice() * searchBean.getNight();
		AllInOne all = new AllInOne("");
		AioCheckOutALL aio = new AioCheckOutALL();
		InvoiceObj invoice = new InvoiceObj();
		// 不指定付款方式，給nulls
		invoice = null;

		// 設定訂單編號，20碼。可自訂
		aio.setMerchantTradeNo(orderNo);
		// 設定交易時間
		aio.setMerchantTradeDate(orderDate);
		// 商品名稱＋單價＋數量
		aio.setItemName(itemName);
		// 交易金額
		aio.setTotalAmount(String.valueOf(totalAmount));
		// 交易描述
		aio.setTradeDesc("房型");
		aio.setHoldTradeAMT("0");
		// 顯示付款成功的頁面（預設
		// aio.setReturnURL("https://developers.opay.tw/AioMock/MerchantReturnUrl");
		aio.setReturnURL("https://startrip.southeastasia.cloudapp.azure.com:8443/startrip/PayEnd");
		//新方法測試
//		aio.setOrderResultURL("https://startrip.southeastasia.cloudapp.azure.com:8443/startrip/PayEnd");
		
		// 付款成功後轉跳的頁面
//		aio.setClientBackURL("https://startrip.southeastasia.cloudapp.azure.com:8443/startrip/PayEnd");

		// 準備訂單
		order.setOrderId(orderNo.substring(0, 7));
		order.setHotelid(hotelId);
		order.setOrderdate(new java.sql.Date(date.getTime()));
		SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy/MM/dd");
		order.setCheckin(new java.sql.Date(format.parse(searchBean.getCheckIn()).getTime()));
		order.setCheckout(new java.sql.Date(format.parse(searchBean.getCheckOut()).getTime()));
		order.setMemberid(memberPk);
		order.setRoomid(room.getRoomid());
		order.setSinglenightprice(room.getBasicprice());
		order.setTotalamount(totalAmount);
		
		hotelOrderServiceInterface.save(order);
		System.out.println(order);

		try {
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch (AllPayException e) {
			throw new Error(e.getNewExceptionMessage());
		}

	}

	@RequestMapping(value = "/PayEnd")
	public String payEnd(Model model) {

		return "hotel/PayEnd";
	}
}
