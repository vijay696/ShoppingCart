package com.niit.shoppingcart.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Supplier;


@Configuration
@ComponentScan("com.niit.shoppingcart")
@EnableTransactionManagement
public class ApplicationContextConfig {
	@Bean(name = "dataSource")
	public DataSource getDataSource() {
//		BasicDataSource dataSource = new BasicDataSource();
	DriverManagerDataSource dataSource = new DriverManagerDataSource();	
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/appniit");
		
		dataSource.setUsername("sa");
		dataSource.setPassword("sa");
		return dataSource;
		
	}



	private Properties getHibernateproperties()
	{
		Properties properties = new Properties();
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		properties.put("hibernate.hbm2ddl.auto", "update");
		return properties;
		
	}
	
	
@Autowired
@Bean(name = "sessionFactory")
public SessionFactory getSessionFactory(DataSource dataSource){
	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
	
sessionBuilder.addProperties(getHibernateproperties());
sessionBuilder.addAnnotatedClass(Category.class);
sessionBuilder.addAnnotatedClass(Supplier.class);
return sessionBuilder.buildSessionFactory();

}

@Autowired
@Bean(name = "transactionManager")
public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory){
	HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
return transactionManager;
}


}

