/*package com.niit.shoppingcart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.Supplier;

@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO {
	

	@Autowired
	private SessionFactory sessionFactory;


	public SupplierDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Supplier> list() {
		@SuppressWarnings("unchecked")
		List<Supplier> list = (List<Supplier>) sessionFactory.openSession()
				.createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return list;
	}

	@Transactional
	public void saveOrUpdate(Supplier supplier) {
		sessionFactory.openSession().saveOrUpdate(supplier);
	}

	@Transactional
	public String  delete(String id) {
		Supplier supplier = new Supplier();
		supplier.setId(id);
		try {
			sessionFactory.openSession().delete(supplier);
		} catch (HibernateException e) {
			e.printStackTrace();
			return e.getMessage();
			
		}
		return null;	
		}

	@Transactional
	public Supplier get(String id) {
		String hql = "from Supplier where id=" + "'"+id+"'";
		Query query = sessionFactory.openSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Supplier> list = (List<Supplier>) query.list();
		
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		
		return null;
	}
	
	@Transactional
	public Supplier getByName(String name) {
		String hql = "from Supplier where name=" + "'"+ name+"'";
		Query query = sessionFactory.openSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Supplier> list = (List<Supplier>) query.list();
		
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		
		return null;
	}

	public String delete(Supplier supplier) {
		// TODO Auto-generated method stub
		return null;
	}

	public Supplier get(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Supplier getByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	public void saveOrUpdate(Supplier supplier) {
		// TODO Auto-generated method stub
		
	}

	public String delete(Supplier supplier) {
		// TODO Auto-generated method stub
		return null;
	}


	public String delete(Supplier supplier) {
		// TODO Auto-generated method stub
		return null;
	}


	public String delete(Supplier supplier) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean add(Supplier supplier) {
		// TODO Auto-generated method stub
		return false;
	}
	}
*/