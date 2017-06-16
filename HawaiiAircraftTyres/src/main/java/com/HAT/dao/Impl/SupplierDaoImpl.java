package com.HAT.dao.Impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.HAT.dao.SupplierDao;
import com.HAT.model.Supplier;
@Repository
@Transactional
public class SupplierDaoImpl implements SupplierDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public SupplierDaoImpl(){
		System.out.println("CREATING INSTANCE FOR SUPPLIERDAOIMPL");
	}
	public Supplier saveOrUpdateSupplier(Supplier supplier) {
		System.out.println(supplier.getSid());
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(supplier); //insert into session values (.....)
		session.flush();
		session.close();
		System.out.println(supplier.getSid());
		return supplier;	
	}

	public List<Supplier> getAllSuppliers() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Supplier");
		List<Supplier> suppliers=query.list();
		session.close();
		return suppliers;
		
	}

}



	

