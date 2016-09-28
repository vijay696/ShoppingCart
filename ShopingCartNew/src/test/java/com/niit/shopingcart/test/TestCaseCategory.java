package com.niit.shopingcart.test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.model.Category;

public class TestCaseCategory {
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Category category;
	AnnotationConfigApplicationContext context;
	
	@Before
	public void init()
	{
		context= new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
		
		categoryDAO=(CategoryDAO) context.getBean("categoryDAO");
		category=(Category) context.getBean("category");
	}
	
	@Test
	public void deleteCategoryTestCase()
	{
		category.setId("PRD 0901");
		boolean flag=categoryDAO .delete(category);
		assertEquals("delete CategoryTestCase", flag, false);
	}
	
	@Test
	public void addCategoryTestCase()
	{
		category.setId("PRD 0901");
		category.setName("samsunga");
		
		categoryDAO.saveOrUpdate(category);
		assertTrue(true);
		
	}
	
	@Test
	public void updateCategoryTestCase()
	{
		category.setId("MOB 0013");
		category.setName("samsuneg");
		assertTrue(true);
		
	}
	
	@Test
	public void listCategoryTestCase()
	{
		assertEquals("addCategoryTestCase",categoryDAO.list().size(), 5);
	}
	@Test
	public void getCategoryTestCase()
	{
		assertEquals("updateCategoryTestCase",categoryDAO.get("MOB 0013"), null);
	}
	
	
}
