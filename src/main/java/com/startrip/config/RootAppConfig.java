package com.startrip.config;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;


@Configuration
@EnableTransactionManagement
//@EnableJpaRepositories("com.startrip.*")
public class RootAppConfig {

//	@Bean
//	public DataSource dataSource() {
//		ComboPooledDataSource ds = new ComboPooledDataSource();
//		ds.setUser("sa");
//		ds.setPassword("P@ssw0rd");
//
//		try {
//			ds.setDriverClass("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//		} catch (PropertyVetoException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//		ds.setJdbcUrl("jdbc:sqlserver://127.0.0.1:1433;DatabaseName=startrip");
//		ds.setInitialPoolSize(4);
//		ds.setMaxPoolSize(8);
//
//		return ds;
//	}

	@Bean
	public LocalSessionFactoryBean sessionFactoryBean() {
		System.out.println("SessionFactory... in RootAppConfig");
		LocalSessionFactoryBean factory = new LocalSessionFactoryBean();
//		factory.setDataSource(dataSource());
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
		properties.put("hibernate.connection.datasource", "java:comp/env/jdbc/startrip");
		return properties;
	}
	
//	@Bean
//	LocalContainerEntityManagerFactoryBean entityManagerFactory(DataSource dataSource,
//			HibernateJpaVendorAdapter hibernateJpaVendorAdapter) {
//		LocalContainerEntityManagerFactoryBean entityManagerFactoryBean = new LocalContainerEntityManagerFactoryBean();
//		entityManagerFactoryBean.setDataSource(dataSource);
//		// entityManagerFactoryBean.setJpaVendorAdapter(new
//		// HibernateJpaVendorAdapter());
//		entityManagerFactoryBean.setJpaVendorAdapter(hibernateJpaVendorAdapter);
//		entityManagerFactoryBean.setPackagesToScan(new String[] { "com.startrip" });
//
//		// Properties jpaProperties = new Properties();
//
//		// Configures the used database dialect. This allows Hibernate to create SQL
//		// that is optimized for the used database.
//		// jpaProperties.put("hibernate.dialect",
//		// env.getRequiredProperty("hibernate.dialect"));
//
//		// Specifies the action that is invoked to the database when the Hibernate
//		// SessionFactory is created or closed.
//		// jpaProperties.put("hibernate.hbm2ddl.auto",
//		// env.getRequiredProperty("hibernate.hbm2ddl.auto"));
//
//		// Configures the naming strategy that is used when Hibernate creates
//		// new database objects and schema elements
//		// jpaProperties.put("hibernate.ejb.naming_strategy",
//		// env.getRequiredProperty("hibernate.ejb.naming_strategy"));
//
//		// If the value of this property is true, Hibernate writes all SQL
//		// statements to the console.
//		// jpaProperties.put("hibernate.show_sql",
//		// env.getRequiredProperty("hibernate.show_sql"));
//
//		// If the value of this property is true, Hibernate will format the SQL
//		// that is written to the console.
//		// jpaProperties.put("hibernate.format_sql",
//		// env.getRequiredProperty("hibernate.format_sql"));
//
//		entityManagerFactoryBean.setJpaProperties(additionalProperties());
//
//		return entityManagerFactoryBean;
//	}
	
//	@Bean
//	public HibernateJpaVendorAdapter hibernateJpaVendorAdapter() {
//		HibernateJpaVendorAdapter hibernateJpaVendorAdapter = new HibernateJpaVendorAdapter();
//		return hibernateJpaVendorAdapter;
//	}
//
//	@Bean
//	JpaTransactionManager transactionManager(EntityManagerFactory entityManagerFactory) {
//		JpaTransactionManager transactionManager = new JpaTransactionManager();
//		transactionManager.setEntityManagerFactory(entityManagerFactory);
//		return transactionManager;
//	}
	
//	  @Bean
//	  public JpaTransactionManager transactionManager() {
//	    return new JpaTransactionManager(); // does this need an emf???
//	  }
	  
//	  @Bean
//	  public HibernateJpaVendorAdapter jpaVendorAdapter() {
//	    HibernateJpaVendorAdapter adapter = new HibernateJpaVendorAdapter();
//    adapter.setDatabase(Database.SQL_SERVER);
//	    adapter.setShowSql(true);
//	    adapter.setGenerateDdl(true);
//	    return adapter;
//	  }
	  
//	  @Bean
//	  public Object emf() {
//	    LocalContainerEntityManagerFactoryBean emf = new LocalContainerEntityManagerFactoryBean();
//	    emf.setDataSource(dataSource());
//	    emf.setPersistenceUnitName("spitter");
//	    emf.setJpaVendorAdapter(jpaVendorAdapter());
//	    return emf;
//	  }

}
