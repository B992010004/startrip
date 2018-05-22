package com.startrip.hotel.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import allPay.payment.integration.AllInOne;
import allPay.payment.integration.domain.AioCheckOutALL;
import allPay.payment.integration.domain.InvoiceObj;
import allPay.payment.integration.exception.AllPayException;

@Controller
public class HotelPaymentController {

	@RequestMapping(value = "/frontEnd/aioCheckOut/aioCheckOutALL/{id}", method = RequestMethod.POST, produces = "text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutALL(@PathVariable Long id) {
		AllInOne all = new AllInOne("");
		AioCheckOutALL aio = new AioCheckOutALL();
		InvoiceObj invoice = new InvoiceObj();
		// 不指定付款方式，給nulls
		invoice = null;
		// 設定訂單編號，20碼。可自訂
		aio.setMerchantTradeNo(UUID.randomUUID().toString().replace("-", "").substring(0, 20));
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		// 設定交易時間
		aio.setMerchantTradeDate(sdf.format(date));
		// 商品名稱＋單價＋數量
		aio.setItemName("豪華雙人房");
		// 交易金額
		aio.setTotalAmount("3400");
		// 交易描述
		aio.setTradeDesc("房型");
		aio.setHoldTradeAMT("0");
		// 顯示付款成功的頁面（預設
		aio.setReturnURL("https://developers.opay.tw/AioMock/MerchantReturnUrl");
		// 付款成功後轉跳的頁面
		// aio.setClientBackURL("http://localhost:8080/startrip/");
		try {
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch (AllPayException e) {
			throw new Error(e.getNewExceptionMessage());
		}
	}
}
