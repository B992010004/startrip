package com.startrip.config;

import java.beans.PropertyVetoException;
import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.startrip.member.memberModle.MemberBean;
import com.startrip.travelPlan.travelAll.model.TravelAllBean;
import com.startrip.travelPlan.travelList.model.TravelListBean;
import com.startrip.travelPlan.travelView.model.TravelViewBean;

@Configuration
@EnableTransactionManagement
public class RootAppConfig {
	
	@Bean
	public DataSource dataSource() {
		ComboPooledDataSource ds = new ComboPooledDataSource();
		ds.setUser("sa");
		ds.setPassword("P@ssw0rd");

		try {
			ds.setDriverClass("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		} catch (PropertyVetoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		ds.setJdbcUrl("jdbc:sqlserver://127.0.0.1:1433;DatabaseName=startrip");
		ds.setInitialPoolSize(4);
		ds.setMaxPoolSize(8);

		return ds;
	}

	@Bean
	public LocalSessionFactoryBean sessionFactoryBean() {
		System.out.println("SessionFactory... in RootAppConfig");
		LocalSessionFactoryBean factory = new LocalSessionFactoryBean();
		factory.setDataSource(dataSource());
		factory.setPackagesToScan(new String[] { "com.startrip" });
		factory.setHibernateProperties(additionalProperties());
		return factory;
	}

	@Bean(name = "transactionManager")
	@Autowired
	public HibernateTransactionManager transactionManager(SessionFactory sessionFactory) {

		System.out.println("transactionManager.. in RootAppConfig");
		// HibernateTransactionManager txManager = null;
		HibernateTransactionManager txManager = new HibernateTransactionManager();
		txManager.setSessionFactory(sessionFactory);
		return txManager;
	}

	private Properties additionalProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.dialect", org.hibernate.dialect.SQLServer2012Dialect.class);
		properties.put("hibernate.show_sql", Boolean.TRUE);
		properties.put("hibernate.format_sql", Boolean.TRUE);
		properties.put("default_batch_fetch_size", 10);
		properties.put("hibernate.hbm2ddl.auto", "update");
		return properties;
	}

}
