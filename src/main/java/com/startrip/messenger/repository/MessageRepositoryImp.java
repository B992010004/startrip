package com.startrip.messenger.repository;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.startrip.messenger.model.MessageBean;

@Repository
public class MessageRepositoryImp implements MessageRepository {

	@Autowired
	SessionFactory sessionFactory;
	
	/* (non-Javadoc)
	 * @see com.startrip.messenger.repository.MessageRepository#saveMessage(com.startrip.messenger.model.MessageBean)
	 */
	@Override
	public Integer saveMessage(MessageBean messageBean) {
		Session session = sessionFactory.getCurrentSession();
		return (Integer) session.save(messageBean);
	}

	/* (non-Javadoc)
	 * @see com.startrip.messenger.repository.MessageRepository#selectMessageBySeqNo(java.lang.Integer)
	 */
	@Override
	public MessageBean selectMessageByPk(Integer messageSeqNo) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(MessageBean.class, messageSeqNo);
		
	}

	/* (non-Javadoc)
	 * @see com.startrip.messenger.repository.MessageRepository#selectMessageByAccountAndReceiverAccount(java.lang.String, java.lang.String)
	 */
	@Override
	public List<MessageBean> selectMessageByAccountAndReceiverAccount(String account, String receiverAccount) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("FROM MessageBean WHERE ((account = :account and receiverAccount = :receiverAccount) or (account = :receiverAccount and receiverAccount = :account)) and messageStatus = '1'",MessageBean.class).setParameter("account", account).setParameter("receiverAccount", receiverAccount).list();
	}

	/* (non-Javadoc)
	 * @see com.startrip.messenger.repository.MessageRepository#updateMessage(com.startrip.messenger.model.MessageBean)
	 */
	@Override
	public void updateMessage(MessageBean messageBean) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(messageBean);
	}
}
