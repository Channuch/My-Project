package com.xworkz.contactbook.dao;


import com.xworkz.contactbook.dto.ContactDto;
import com.xworkz.contactbook.util.EntityManagerFactoryUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import java.util.List;

public class ContactDaoImpl implements ContactDao{
    public boolean addContact(ContactDto contactDto) {
        EntityManagerFactory entityManagerFactory = EntityManagerFactoryUtil.getEntityManagerFactory();
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(contactDto);
        entityManager.getTransaction().commit();
        return true;
    }

    @Override
    public ContactDto getContactById(int id) {
     EntityManagerFactory entityManagerFactory = EntityManagerFactoryUtil.getEntityManagerFactory();
     EntityManager entityManager =entityManagerFactory.createEntityManager();
     entityManager.getTransaction().begin();
     ContactDto dto = entityManager.find(ContactDto.class,id);
     entityManager.getTransaction().commit();
     return dto;
    }

    @Override
    public List<ContactDto> getAllContact() {
        System.out.println("Get All Contact started");
     EntityManagerFactory entityManagerFactory = EntityManagerFactoryUtil.getEntityManagerFactory();
     EntityManager entityManager = entityManagerFactory.createEntityManager();
      Query query  = entityManager.createQuery("select contactDto from ContactDto contactDto");
     List<ContactDto> dto = query.getResultList();

       /* EntityManagerFactory entityManagerFactory = EntityManagerFactoryUtil.getEntityManagerFactory();
        EntityManager entityManager= entityManagerFactory.createEntityManager();
        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<ContactDto> criteria = criteriaBuilder.createQuery(ContactDto.class);
        criteria.select(criteria.from(ContactDto.class));
        List<ContactDto> ListOfContact = entityManager.createQuery(criteria).getResultList();*/
       /* dtos.add(new ContactDto(1,"channu",9632084956L,"channu@gmail","kalaburgi"));
        dtos.add(new ContactDto(2,"shivu",3465894758L,"shivu@gmail","kalaburgi"));
        dtos.add(new ContactDto(3,"channu",834658934659L,"madi@gmail","kalaburgi"));*/
        System.out.println("Get All Contact Ended");
        return dto;
    }

    @Override
    public ContactDto getContactByName(String name) {
        System.out.println("Get Contact By Name Started");
       EntityManager entityManager = EntityManagerFactoryUtil.getEntityManagerFactory().createEntityManager();
       Query query =entityManager.createQuery("select contactDto from ContactDto contactDto where contactDto.name =:fn") ;
       query.setParameter("fn",name);
       ContactDto contactDto = (ContactDto) query.getSingleResult();
       entityManager.close();
        System.out.println("Get Contact By Name Ended");
        return contactDto;
    }

     @Override
    public void deleteById(int id) {
      EntityManager entityManager = EntityManagerFactoryUtil.getEntityManagerFactory().createEntityManager();
      entityManager.getTransaction().begin();
      Query query = entityManager.createQuery("delete from ContactDto contactDto where contactDto.id =:id");
      query.setParameter("id",id);
        query.executeUpdate();
      entityManager.getTransaction().commit();

    }

    @Override
    public void updateContact(ContactDto contactDto) {
      EntityManager entityManager = EntityManagerFactoryUtil.getEntityManagerFactory().createEntityManager();
      entityManager.getTransaction().begin();
      entityManager.merge(contactDto);
      entityManager.getTransaction().commit();
      entityManager.close();
    }


}
