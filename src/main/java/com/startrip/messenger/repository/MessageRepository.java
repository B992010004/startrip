package com.startrip.messenger.repository;

import java.util.List;

import com.startrip.messenger.model.MessageBean;

public interface MessageRepository {

	Integer saveMessage(MessageBean messageBean);

	MessageBean selectMessageByPk(Integer messageSeqNo);

	List<MessageBean> selectMessageByAccountAndReceiverAccount(String account, String receiverAccount);

	void updateMessage(MessageBean messageBean);

}