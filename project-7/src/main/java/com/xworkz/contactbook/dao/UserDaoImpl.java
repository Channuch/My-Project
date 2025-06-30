package com.xworkz.contactbook.dao;

import com.xworkz.contactbook.dto.UserDto;
import com.xworkz.contactbook.util.EntityManagerFactoryUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

public class UserDaoImpl implements UserDao{
    @Override
    public boolean addUser(UserDto user) {
        EntityManagerFactory entityManagerFactory = EntityManagerFactoryUtil.getEntityManagerFactory();
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(user);
        entityManager.getTransaction().commit();
        return false;
    }

    @Override
    public UserDto getUserByEmail(String mail) {
      EntityManagerFactory entityManagerFactory = EntityManagerFactoryUtil.getEntityManagerFactory();
      EntityManager entityManager = entityManagerFactory.createEntityManager();
      Query query = entityManager.createQuery("select userDto from UserDto userDto where userDto.userMail=:em");
      query.setParameter("em",mail);
      UserDto userDto = (UserDto) query.getSingleResult();
      entityManager.close();
      return userDto;
    }
}
