package com.niit.shopingcart.test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.UserDetailsDAO;
import com.niit.shopingcart.model.UserDetails;

public class TestCaseUserDeatails {
	@Autowired
	UserDetailsDAO userDetailsDAO;
	
	@Autowired
	UserDetails userDetails;
	AnnotationConfigApplicationContext context;
	
	@Before
	public void init()
	{
		context= new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
		
		userDetailsDAO=(UserDetailsDAO) context.getBean("userDetailsDAO");
		userDetails=(UserDetails) context.getBean("userDetails");
	}
	
	@Test
	public void deleteUserDetailsTestCase()
	{
		userDetails.setId("PRD 0901");
		String flag=userDetailsDAO .delete(userDetails);
		assertEquals("delete UserDetailsTestCase", flag, null);
	}
	
	@Test
	public void addUserDetailsTestCase()
	{
		userDetails.setId("PRD 0901");
		userDetails.setName("samsunga");
		
		userDetailsDAO.saveOrUpdate(userDetails);
		assertTrue(true);
		
	}
	
	@Test
	public void updateUserDetailsTestCase()
	{
		userDetails.setId("MOB 0013");
		userDetails.setName("samsuneg");
		assertTrue(true);
		
	}
	
	@Test
	public void listUserDetailsTestCase()
	{
		assertEquals("addUserDetailsTestCase",userDetailsDAO.list().size(), 3);
	}
	@Test
	public void getUserDetailsTestCase()
	{
		assertEquals("updateUserDetailsTestCase",userDetailsDAO.get("MOB 0013"), null);
	}
	
	
}
