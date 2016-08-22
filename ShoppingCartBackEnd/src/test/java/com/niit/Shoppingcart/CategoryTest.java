package com.niit.Shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.EnableMBeanExport;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;

public class CategoryTest {
	
	public static void main(String[] args) {
		
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		
		
		
		
		CategoryDAO categoryDAO = (CategoryDAO)  context.getBean("categoryDAO");
		
		Category category = (Category) context.getBean("category");
		

			category.setDescription("GOOD");
			
			category.setName("I1O");
			
			
		
		
		 
		
	
	
	}

}
