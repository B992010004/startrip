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
	
	//流水號拿掉
	public MessageBean(String messageArticle, String senderAccount, String receiverAccount,
			Timestamp messageDate, String messageStatus) {
		super();
//		this.no = no;
		this.messageArticle = messageArticle;
		this.senderAccount = senderAccount;
		this.receiverAccount = receiverAccount;
		this.messageDate = messageDate;
		this.messageStatus = messageStatus;
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
		
	
}
