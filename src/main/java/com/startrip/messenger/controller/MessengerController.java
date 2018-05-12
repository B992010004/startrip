package com.startrip.messenger.controller;

import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.socket.handler.AbstractWebSocketHandler;

import com.startrip.messenger.model.MessageBean;

@Controller
public class MessengerController extends AbstractWebSocketHandler {

	@MessageMapping("/chatRoom/{senderPk}/{receiverPk}")
	// @SendTo("/topic/shout")
	@SendTo("/target/message/{senderPk}/{receiverPk}")
	public MessageBean handleShout(MessageBean messageBean, @DestinationVariable("senderPk") String senderPk,
			@DestinationVariable("receiverPk") String receiverPk) {
		
		System.out.println("----------------------------------------------------------------");
		System.out.println(senderPk);
		System.out.println(receiverPk);
		System.out.println("----------------------------------------------------------------");
		System.out.println("broadcastMessage");

		MessageBean outgoing = new MessageBean();
		outgoing.setMessage(messageBean.getMessage());
		return outgoing;
	}
}
