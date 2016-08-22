package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.UserDetails;



public interface UserDetailsDAO {

	
	public boolean save(UserDetails userDetails);
	public boolean update(UserDetails userDetails);
	public boolean delete(UserDetails userDetails);
	
	public UserDetails get(String id);
	public List<UserDetails> list();
	
}


