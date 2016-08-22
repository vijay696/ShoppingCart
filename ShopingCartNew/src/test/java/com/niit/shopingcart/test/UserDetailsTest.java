package com.niit.shopingcart.test;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shopingcart.dao.UserDetailsDAO;
import com.niit.shopingcart.model.UserDetails;


public class UserDetailsTest {
public static void main(String[] args) {
		
		
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shopingcart");
		context.refresh();
		
	UserDetails u =(UserDetails)context.getBean("userDetails");
	
	UserDetailsDAO userDetailsDAO = (UserDetailsDAO)context.getBean("userDetailsDAO");
	u.setId("U001");
	u.setName("Anu");
	u.setAddress("Bangalore");
	u.setContactNumber("9999999999");
	u.setMailID("anu@yahoo.com");
	userDetailsDAO.saveOrUpdate(u);
	u.setId("U003");
	u.setName("pooja");
	u.setAddress("Chennai");
	u.setMailID("pooja@gmail.com");
	userDetailsDAO.saveOrUpdate(u);
	List<UserDetails>  list =    userDetailsDAO.list();
	
	for(UserDetails sup : list)
	{
		System.out.println(sup.getId()  + ":" +  sup.getName()  + ":"+  sup.getAddress());
	}
		
		
	}

}
