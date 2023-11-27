package com.xworkz.rto.repository;

import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xworkz.entity.RtoEntity;
import com.xworkz.entity.UserEntity;
import com.xworkz.rto.dto.RtoDto;
import com.xworkz.rto.dto.UserDto;

@Repository
public class RtoRepositoryImplementation implements RtoRepository {

	@Autowired
	EntityManagerFactory factory;

	public RtoRepositoryImplementation() {
		
		System.out.println("RtoRepositoryImplementation object is created");
	
	}

	@Override
	public boolean OnSave(RtoDto dto) {
		System.out.println("onsave method in repository");
		System.out.println(dto);
		RtoEntity entity = new RtoEntity();
		BeanUtils.copyProperties(dto, entity);
		entity.setCreatedOn(LocalDateTime.now());
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.persist(entity);
		transaction.commit();
		manager.close();
		return true;
	}

	@Override
	public List<RtoEntity> findAll() {
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createNamedQuery("findAll");
		List<RtoEntity> list = query.getResultList();
		for (RtoEntity rto : list) {
			System.out.println(rto.toString());
		}
		System.out.println(list.toString());
		return list;
	}

	@Override
	public RtoEntity login(String email, String passWord) {
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createNamedQuery("findByEmail");
		query.setParameter("email", email);
		query.setParameter("passWord", passWord);
		try {
			return (RtoEntity) // rto entity as return type because of
			query.getSingleResult(); // to fetch unique data from the table..
			// if we consider list as the return it is going to fetch all the values
			// including duplicates so
			// we consider only dto as return type to find unique email nad password
		} catch (NoResultException e) {

			return null;
		}

	}

	@Override
	public List<RtoEntity> findByState(String state) {
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createNamedQuery("findByState");
		query.setParameter("state", state);
		List<RtoEntity> entity = query.getResultList();
		return entity;
	}

	@Override
	public boolean OnSave(UserDto dto) {
        System.out.println("onsave method in repository");
		System.out.println(dto);
		UserEntity entity = new UserEntity();
		BeanUtils.copyProperties(dto, entity);
		entity.setRegisteredTime(LocalDateTime.now());
		entity.setStatus("pending");
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		transaction.begin();
		manager.persist(entity);
		transaction.commit();
		manager.close();
		return true;
	}
	
	@Override
	public List<UserEntity> searchByState(String state) {
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createNamedQuery("searchByState");
		query.setParameter("state", state);
		List<UserEntity> entity = query.getResultList();
		return entity;
	}

	@Override
	public UserEntity userLogin(String appNoorphoneNo, String dob) {
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createNamedQuery("findByLogin");
		query.setParameter("aporpn",appNoorphoneNo);
		query.setParameter("dob", dob);
		try {
			return (UserEntity)
			query.getSingleResult(); 
		} catch (NoResultException e) {

			return null;
		}
					
	}

	@Override
	public boolean updateById(int id) {
	EntityManager manager = factory.createEntityManager();
	UserEntity entity =  manager.find(UserEntity.class, id);
	if(entity!=null) {
		entity.setStatus("approved");
		manager.getTransaction().begin();
		manager.merge(entity);
		manager.getTransaction().commit();
		manager.close();
		return true;
	
	}else {
		
		System.out.println("invalid id");
	}
	
	return false;
		
	}
	

}
