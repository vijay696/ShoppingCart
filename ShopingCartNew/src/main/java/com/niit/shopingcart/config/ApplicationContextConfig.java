package com.niit.shopingcart.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.shopingcart.dao.CartDAO;
import com.niit.shopingcart.dao.CartDAOImpl;
//import com.niit.shopingcart.dao.CartDAO;
//import com.niit.shopingcart.dao.CartDAOImpl;
import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.dao.CategoryDAOImpl;
import com.niit.shopingcart.model.Cart;
import com.niit.shopingcart.model.Category;
import com.niit.shopingcart.model.Product;
import com.niit.shopingcart.model.Supplier;
import com.niit.shopingcart.model.UserDetails;


@Configuration
@ComponentScan("com.niit.shopingcart")
@EnableTransactionManagement
public class ApplicationContextConfig {
	

	@Bean(name = "h2DataSource")
	public DataSource getH2DataSource() {
	    	DriverManagerDataSource dataSource = new DriverManagerDataSource();
	    	dataSource.setDriverClassName("org.h2.Driver");
			dataSource.setUrl("jdbc:h2:tcp://localhost/~/test3");
				
			dataSource.setUsername("sa");
			dataSource.setPassword("sa");
	    	Properties connectionProperties = new Properties();
			connectionProperties.setProperty("hibernate.hbm2ddl.auto", "update");
			connectionProperties.setProperty("hibernate.show_sql", "true");
			connectionProperties.setProperty("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		
	    	return dataSource;
	    }
	    
	    
	    private Properties getHibernateProperties() {
	    	Properties properties = new Properties();
	    	properties.put("hibernate.show_sql", "true");
	    	properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
	     	properties.put("hibernate.hbm2ddl.auto", "update");
	    return properties;
	    }
    @Autowired
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource) {
    	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
    	sessionBuilder.addProperties(getHibernateProperties());
    	sessionBuilder.addAnnotatedClasses(Category.class);
    	sessionBuilder.addAnnotatedClasses(Supplier.class);
    	//sessionBuilder.addAnnotatedClasses(User.class);
    	sessionBuilder.addAnnotatedClasses(Product.class);
    	sessionBuilder.addAnnotatedClasses(Cart.class);
    	sessionBuilder.addAnnotatedClasses(UserDetails.class);
    	//sessionBuilder.addAnnotatedClasses(shipping.class);
    	return sessionBuilder.buildSessionFactory();
    }
    
	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(
			SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(
				sessionFactory);

		return transactionManager;
	}
    
  
	
	@Autowired
    @Bean(name = "categoryDao")
    public CategoryDAO getCategoryDao(SessionFactory sessionFactory) {
    	return new CategoryDAOImpl(sessionFactory);
    }
    
    @Autowired
    @Bean(name = "cartDao")
    public CartDAO getCartDao(SessionFactory sessionFactory) {
    	return new CartDAOImpl(sessionFactory);
    }

	
	
/*
    @Autowired
    @Bean(name = "cartDao")
    public CartDAO getCartDao(SessionFactory sessionFactory) {
    	return new CartDAOImpl(sessionFactory);
    }
	
*/	
}
