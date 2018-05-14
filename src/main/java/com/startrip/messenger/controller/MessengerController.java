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
	@SendTo("/target/message/{receiverPk}/{senderPk}")
	public MessageBean handleChat(MessageBean messageBean, @DestinationVariable("senderPk") String senderPk,
			@DestinationVariable("receiverPk") String receiverPk) {

		System.out.println("----------------------------------------------------------------");
		System.out.println("sender: " + senderPk);
		System.out.println("receiver: " + receiverPk);
		System.out.println("----------------------------------------------------------------");
		System.out.println("ChatMessage");

		MessageBean outgoing = new MessageBean();
		outgoing.setMessage(messageBean.getMessage());
		return outgoing;
	}
	
	@MessageMapping("/brocast/message/{senderPk}/{receiverPk}")
	// @SendTo("/topic/shout")
	@SendTo("/brocast/message/{receiverPk}")
	public MessageBean handleBrocast(MessageBean messageBean, @DestinationVariable("senderPk") String senderPk,
			@DestinationVariable("receiverPk") String receiverPk) {

		System.out.println("----------------------------------------------------------------");
		System.out.println("Brocast  sender: " + senderPk);
		System.out.println("Brocast  receiver: " + receiverPk);
		System.out.println("----------------------------------------------------------------");
		System.out.println("broadcastMessage");

		MessageBean outgoing = new MessageBean();
		outgoing.setSenderAccount(senderPk);
		outgoing.setReceiverAccount(receiverPk);
		outgoing.setMessage(messageBean.getMessage());
		outgoing.setMessageStatus(messageBean.getMessageStatus());
		return outgoing;
	}
}
