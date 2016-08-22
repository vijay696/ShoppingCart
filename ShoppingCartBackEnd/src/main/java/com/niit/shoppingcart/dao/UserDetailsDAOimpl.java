package com.niit.shoppingcart.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.UserDetails;

@EnableTransactionManagement
@SuppressWarnings("deprecation")
@Repository("userDetailsDAO")
public class UserDetailsDAOimpl implements UserDetailsDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public UserDetailsDAOimpl (SessionFactory sessionFactory)
	{
		this.sessionFactory = sessionFactory;
		
	}

	@Transactional
	public boolean save(UserDetails category){
		try {
			sessionFactory.getCurrentSession().save(category);
			return true;
		} 
		catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		return false;
		}
	}
	
	@Transactional
	public boolean update(UserDetails category){
		try {
			sessionFactory.getCurrentSession().update(category);
		return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		return false;
		}
	}
	
	@Transactional
	public boolean delete(UserDetails category){
		try {
			sessionFactory.getCurrentSession().delete(category);
		return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		return false;
		}
		
	}
	
	@Transactional
	public UserDetails get(String id){
		String hql = "from UserDetails where id = " + " ' " + id + " ' ";
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<UserDetails> list = query.list();
		
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
	
	public List<UserDetails> list()
	{
	String hql = "from UserDetails";
	@SuppressWarnings("rawtypes")
	Query query = sessionFactory.getCurrentSession().createQuery(hql);
	
	return query.list();
	}
	
}
