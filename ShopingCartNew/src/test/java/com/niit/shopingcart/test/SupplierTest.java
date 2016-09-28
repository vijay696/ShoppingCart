package com.niit.shopingcart.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.model.Supplier;

public class SupplierTest {
	
	
	public static void main(String[] args) {
		
		
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
		
	Supplier s =(Supplier)context.getBean("supplier");
	
	SupplierDAO supplierDAO = (SupplierDAO)  context.getBean("supplierDAO");
	s.setId("SUP_001");
	s.setName("Reliance");
	s.setAddress("Bangalore");
	supplierDAO.saveOrUpdate(s);
	s.setId("SUP_002");
	s.setName("BigBazfreaar");
	s.setAddress("Chennai");
	supplierDAO.saveOrUpdate(s);
	s.setId("SUP_003");
	s.setName("Croma");
	s.setAddress("Hyderabad");
	supplierDAO.saveOrUpdate(s);
	List<Supplier>  list =    supplierDAO.list();
	
	for(Supplier sup : list)
	{
		System.out.println(sup.getId()  + ":" +  sup.getName()  + ":"+  sup.getAddress());
	}
		
		
	}

}
