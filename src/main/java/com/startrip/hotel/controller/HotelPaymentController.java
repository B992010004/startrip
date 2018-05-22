package com.startrip.hotel.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.startrip.hotel.model.HotelOrder;
import com.startrip.hotel.model.Rooms;
import com.startrip.hotel.service.RoomsServiceInterface;

import allPay.payment.integration.AllInOne;
import allPay.payment.integration.domain.AioCheckOutALL;
import allPay.payment.integration.domain.InvoiceObj;
import allPay.payment.integration.exception.AllPayException;

@Controller
public class HotelPaymentController {

	@Autowired
	RoomsServiceInterface roomsServiceInterface;

	@RequestMapping(value = "/frontEnd/aioCheckOut/aioCheckOutALL/{hotelId}/{roomType}", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutALL(@PathVariable Integer hotelId, @PathVariable Integer roomType,
			HotelOrder order) {

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
		String totalAmount = room.getBasicprice().toString();
		
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
		aio.setTotalAmount(totalAmount);
		// 交易描述
		aio.setTradeDesc("房型");
		aio.setHoldTradeAMT("0");
		// 顯示付款成功的頁面（預設
		aio.setReturnURL("https://developers.opay.tw/AioMock/MerchantReturnUrl");
		aio.setReturnURL("https://startrip.southeastasia.cloudapp.azure.com:8443/startrip/PayEnd");
		// 付款成功後轉跳的頁面
		// aio.setClientBackURL("http://localhost:8080/startrip/");

		order.setHotelid(hotelId);
		order.setOrderdate(new java.sql.Date(date.getTime()));
		System.out.println(order);
		try {
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch (AllPayException e) {
			throw new Error(e.getNewExceptionMessage());
		}

	}
}
