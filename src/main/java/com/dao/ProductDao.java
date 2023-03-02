package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.model.Product;

@Component
public class ProductDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void createProduct(Product product) {
		this.hibernateTemplate.save(product);
	}

	public List<Product> getAllProduct() {
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	public void deleteProduct(int pid) {
		Product p = this.hibernateTemplate.get(Product.class, pid);
		this.hibernateTemplate.delete(p);
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
}
