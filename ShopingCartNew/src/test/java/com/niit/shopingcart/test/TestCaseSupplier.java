package com.niit.shopingcart.test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.SupplierDAO;
import com.niit.shopingcart.model.Supplier;

public class TestCaseSupplier {
	@Autowired
	SupplierDAO supplierDAO;
	
	@Autowired
	Supplier supplier;
	AnnotationConfigApplicationContext context;
	
	@Before
	public void init()
	{
		context= new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
		
		supplierDAO=(SupplierDAO) context.getBean("supplierDAO");
		supplier=(Supplier) context.getBean("supplier");
	}
	
	@Test
	public void deleteSupplierTestCase()
	{
		supplier.setId("PRD 0901");
		String flag=supplierDAO .delete(supplier);
		assertEquals("delete SupplierTestCase", flag, null);
	}
	
	@Test
	public void addSupplierTestCase()
	{
		supplier.setId("PRD 0901");
		supplier.setName("samsunga");
		
		supplierDAO.saveOrUpdate(supplier);
		assertTrue(true);
		
	}
	
	@Test
	public void updateSupplierTestCase()
	{
		supplier.setId("MOB 0013");
		supplier.setName("samsuneg");
		assertTrue(true);
		
	}
	
	@Test
	public void listSupplierTestCase()
	{
		assertEquals("addSupplierTestCase",supplierDAO.list().size(), 4);
	}
	@Test
	public void getSupplierTestCase()
	{
		assertEquals("updateSupplierTestCase",supplierDAO.get("MOB 0013"), null);
	}
	
	
}
