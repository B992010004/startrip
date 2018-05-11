package com.startrip.messenger.controller;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.stereotype.Controller;
import org.springframework.web.socket.handler.AbstractWebSocketHandler;

import com.startrip.messenger.model.Shout;

@Controller
public class MessengerController extends AbstractWebSocketHandler {

	@MessageMapping("/mc")
//	@SendTo("/topic/shout")
	public Shout handleShout(Shout incoming) {
		Shout outgoing = new Shout();
		outgoing.setMessage("Polo!");
		return outgoing;
	}
}
