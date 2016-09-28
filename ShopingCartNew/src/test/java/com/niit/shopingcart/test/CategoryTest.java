package com.niit.shopingcart.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.CategoryDAO;
import com.niit.shopingcart.model.Category;

public class CategoryTest {
	
	
	public static void main(String[] args) {
		
		
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
		
	Category c =(Category)context.getBean("category");
	
	CategoryDAO categoryDAO = (CategoryDAO)  context.getBean("categoryDAO");
	c.setId("CAT_001");
	c.setName("Mobile_Samsung");
	c.setDescription("Samsung S5");
	categoryDAO.saveOrUpdate(c);
    
	
	c.setId("CAT_002");
	c.setName("Mobile_Apple");
	c.setDescription("iPhone");
	categoryDAO.saveOrUpdate(c);
	

	c.setId("CAT_003");
	c.setName("Tablet");
	c.setDescription("Tablet product");
	c.setId("CAT_004");
	c.setName("nokia");
	c.setDescription("nokia product");
	
	
	
	
	categoryDAO.saveOrUpdate(c);
	c.setId("CAT_005");
	c.setName("k555");
	c.setDescription("nokia prduct");
	categoryDAO.saveOrUpdate(c);
	

	
	
	
	List<Category>  list =    categoryDAO.list();
	
	for(Category cat : list)
	{
		System.out.println(cat.getId()  + ":" +  cat.getName()  + ":"+  cat.getDescription());
	}
		
		
	}

}
