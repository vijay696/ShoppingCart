package com.niit.shoppingcart.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.Category;
@EnableTransactionManagement
@Repository("categoryDAO")

public class CategoryDAOimpl implements CategoryDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public CategoryDAOimpl (SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
		
	}

	@Transactional
	public void saveOrUpdate(Category category){
	
			sessionFactory.getCurrentSession().saveOrUpdate(category);
		
		}
	
	
	
	@Transactional
	public void delete(String id){
Category CategoryToDelete = new Category();
CategoryToDelete.setId(id);
sessionFactory.getCurrentSession().delete(CategoryToDelete);
	}
	
	@Transactional
	public Category get(String id){
		String hql = "from Category where id = " + " ' " + id + " ' ";
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> list = query.list();
		
		if(list==null){
			return null;
			
		}
		else
		{
			return list.get(0);
			
		}
		
		
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	
	public List<Category> list()
	{
	String hql = "from Category";
	@SuppressWarnings("rawtypes")
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	
	return query.list();
	}

	public void delete(Category category) {
		// TODO Auto-generated method stub
		
	}

	
	
}
