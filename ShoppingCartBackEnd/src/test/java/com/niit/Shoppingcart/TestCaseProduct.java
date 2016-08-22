package com.niit.Shoppingcart;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.model.Product;

public class TestCaseProduct {

	//to write test case for product we need productdao and product object
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Product product;
	
	AnnotationConfigApplicationContext context;
	
	
	//you can write a method to initialize objects or methods
	
	@Before
	
	public void init()
	{
		
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		productDAO = (ProductDAO)  context.getBean("productDAO");
		product = (Product) context.getBean("product");
		
		
		
		
		
	}
	
	
	@Test
	public void deleteProductTestCase()
	{
		product.setId("PRD_001");
		
	boolean flag =	productDAO.delete(product);
	assertEquals(" deleteProductTestCase  ",  flag , false );
	}
	
	
@Test
public void addProductTestcase()
{
product.setId("MOB_001");
product.setName("phone");
product.setDescription("this is iphone");
product.setPrice(50000);
productDAO.save(product);

assertEquals("addProductTestCase",productDAO.save(product) , true);


}

@Test
public void listProductTestCase()
{
	assertEquals("addProductTestCase", productDAO.list().size(), 2);
}

@Test
public void updateProductTestCase()
{
	product.setId("MOB_004");
	product.setPrice(2000);
	
	assertEquals("updateProductTestCase", productDAO.update(product), true);
}

@Test
public void getProductTestCase()
{
assertEquals("getProductTestCase", productDAO.get("MOB_008"), null);	
}



}


