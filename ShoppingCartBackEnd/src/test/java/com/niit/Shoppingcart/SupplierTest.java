package com.niit.Shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;

public class SupplierTest {
	
	public static void main(String[] args) {
		
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		
		
		
		SupplierDAO supplierDAO = (SupplierDAO)  context.getBean("supplierDAO");
		
		Supplier supplier = (Supplier) context.getBean("supplier");
		
		
		supplier.setId("CG001");
		supplier.setName("CGName001");
		supplier.setAddress("street");
		
		if( supplierDAO.save(supplier) == true)
		{
			System.out.println("Supplier created successfuly");
		}
		else
			
		{
			System.out.println("Not able to obtain");
		}
		
	
	
	}

}
