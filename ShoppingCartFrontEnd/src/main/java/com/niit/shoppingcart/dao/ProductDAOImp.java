/*package com.niit.shoppingcart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.Product;

@Repository("productDAO")
public class ProductDAOImp implements ProductDAO {
	

	@Autowired
	private SessionFactory sessionFactory;


	public ProductDAOImp(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Product> list() {
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) sessionFactory.openSession()
				.createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listProduct;
	}

	@Transactional
	public void saveOrUpdate(Product product) {
	sessionFactory.openSession().saveOrUpdate(product);
}

	@Transactional
	public void delete(String id) {
		Product ProductToDelete = new Product();
		ProductToDelete.setId(id);
		sessionFactory.openSession().delete(ProductToDelete);
	}

	@Transactional
	public Product get(String id) {
		String hql = "from Product where id='" + id+"'";
		Query query = sessionFactory.openSession().createQuery(hql);
		System.out.println("Inside productDAO get");
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();
		
		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		
		return null;
	}

	public boolean delete(Product product) {
		try{
			sessionFactory.openSession().delete(product);
			
			return true;
		}catch(Exception e){
		// TODO Auto-generated method stub
			e.printStackTrace();
			
			
			
			
		return false;
		}
	}

	public boolean add(Product product) {
		try{
			sessionFactory.openSession();
			
			return true;
		}catch(Exception e){
		// TODO Auto-generated method stub
			e.printStackTrace();
			
			
			
			
		return false;
		}
	}

	public Product get(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void saveOrUpdate(Product product) {
		// TODO Auto-generated method stub
		
	}

	public boolean add(Product product) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(Product product) {
		// TODO Auto-generated method stub
		return false;
	}
}
*/