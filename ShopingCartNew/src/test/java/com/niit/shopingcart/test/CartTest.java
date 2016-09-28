package com.niit.shopingcart.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.CartDAO;
//import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.model.Cart;
//import com.niit.shopingcart.model.Category;

public class CartTest {
public static void main(String[] args) {
		
		
	
	
	@SuppressWarnings("resource")
	AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
	context.scan("com.niit.shopingcart");
	context.refresh();

	
	
	/*
	@SuppressWarnings("resource")
	AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
	*/	
	
	//Category c =(Category)	  context.getBean("category");
		
		//CategoryDAO categoryDAO = (CategoryDAO)  context.getBean("categoryDAO");	
             
		Cart c=(Cart)context.getBean("cart");
                  CartDAO cartDAO=(CartDAO) context.getBean("cartDAO");
                  
                 //c.setId(43);
                  c.setPrice(456);
                  c.setProductName("sdwe");
                  c.setQuantity(78);
                  c.setTotal(767);
                  c.setUserID("admin");
                  cartDAO.saveOrUpdate(c);
                  
}
}
