package com.niit.shopingcart.dao;

import java.util.List;

import com.niit.shopingcart.model.Product;

public interface ProductDAO {


	public List<Product> list();

	public Product get(String id);

	public void saveOrUpdate(Product product);
	
	public boolean add(Product product);

	public boolean delete(Product product);


}
