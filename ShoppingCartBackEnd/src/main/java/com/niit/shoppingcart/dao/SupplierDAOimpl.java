package com.niit.shoppingcart.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.Supplier;
@EnableTransactionManagement
@SuppressWarnings("deprecation")
@Repository("supplierDAO")

public class SupplierDAOimpl {
	@Autowired
	private SessionFactory sessionFactory;
	
	public SupplierDAOimpl (SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
	
	}
     
	@Transactional
	public void saveOrUpdate (Supplier supplier){
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}

	@Transactional
	public void delete(String id){
		Supplier supplier = new Supplier();
		supplier.setId(id);
		sessionFactory.getCurrentSession().delete(supplier);
	}
	
	@Transactional
	public Supplier get(String id){
		String hql = "from Supplier where id = " + " ' " + id + " ' ";
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = (List<Supplier>)query.list();
		
		
		if(listSupplier != null && listSupplier.isEmpty()){
			return listSupplier.get(0);
		}
		return null;
		
	}
	
@SuppressWarnings("unchecked")
public List<Supplier> list(){
	String hql = "from Supplier";
	@SuppressWarnings("rawtypes")
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	List<Supplier> listSupplier = (List<Supplier>) query.list();
	return listSupplier;
}
	
	
}
