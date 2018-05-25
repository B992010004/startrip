package com.startrip.messenger.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class MessageBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer no;
	private String messageArticle;
	private String senderAccount;
	private String receiverAccount;
	private Timestamp messageDate;
	private String messageStatus;
	private String message;
	private String senderAccName;

	@Override
	public String toString() {
		return "MessageBean [no=" + no + ", messageArticle=" + messageArticle + ", senderAccount=" + senderAccount
				+ ", receiverAccount=" + receiverAccount + ", messageDate=" + messageDate + ", messageStatus="
				+ messageStatus + ", message=" + message + ", senderAccName=" + senderAccName + "]";
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public String getMessageArticle() {
		return messageArticle;
	}

	public void setMessageArticle(String messageArticle) {
		this.messageArticle = messageArticle;
	}

	public String getSenderAccount() {
		return senderAccount;
	}

	public void setSenderAccount(String senderAccount) {
		this.senderAccount = senderAccount;
	}

	public String getReceiverAccount() {
		return receiverAccount;
	}

	public void setReceiverAccount(String receiverAccount) {
		this.receiverAccount = receiverAccount;
	}

	public Timestamp getMessageDate() {
		return messageDate;
	}

	public void setMessageDate(Timestamp messageDate) {
		this.messageDate = messageDate;
	}

	public String getMessageStatus() {
		return messageStatus;
	}

	public void setMessageStatus(String messageStatus) {
		this.messageStatus = messageStatus;
	}

	public String getSenderAccName() {
		return senderAccName;
	}

	public void setSenderAccName(String senderAccName) {
		this.senderAccName = senderAccName;
	}

}
