/*package com.niit.shoppingcart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.model.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	

	@Autowired
	private SessionFactory sessionFactory;


	public CategoryDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Category> list() {
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) sessionFactory.openSession()
				.createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listCategory;
	}

	@Transactional
	public void saveOrUpdate(Category category) {
		System.out.println(" inside category dao");	
		sessionFactory.openSession().saveOrUpdate(category);
	}

	@Transactional
	public boolean delete(String id) {
		Category CategoryToDelete = new Category();
		CategoryToDelete.setId(id);
		sessionFactory.openSession().delete(CategoryToDelete);
		return false;
	}

	@Transactional
	public Category get(String id) {
		String hql = "from Category where id=" +"'"+ id +"'";
		Query query = sessionFactory.openSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) query.list();
		
		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		
		return null;
	}
	@Transactional
	public Category getByName(String name) {
		String hql = "from Category where name=" + "'"+ name +"'";
		Query query = sessionFactory.openSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) query.list();
		
		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		
		return null;
	}

	public boolean delete(Category category) {
		// TODO Auto-generated method stub
		return false;
	}

	public void add(Category category) {
		// TODO Auto-generated method stub
		
	}

	public Category get(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Category getByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	public void saveOrUpdate(Category category) {
		// TODO Auto-generated method stub
		
	}

	public boolean delete(Category category) {
		// TODO Auto-generated method stub
		return false;
	}

	public void add(Category category) {
		// TODO Auto-generated method stub
		
	}



	public void add(Category category) {
		// TODO Auto-generated method stub
		
	}

	public String delete(Category category) {
		// TODO Auto-generated method stub
		return null;
	}

}
*/