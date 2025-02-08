package com.xworkz.contactbook.service;

import com.xworkz.contactbook.dao.ContactDao;
import com.xworkz.contactbook.dao.ContactDaoImpl;
import com.xworkz.contactbook.dto.ContactDto;

import java.util.List;

public class ContactServiceImpl implements ContactService{

    ContactDao contactDao = new ContactDaoImpl();
    public boolean validateContact(ContactDto contactDto) {
        boolean isContactValidated = false;
        boolean isNameValidated = false;
        if(contactDto!= null){
            if (contactDto.getName()!= null && !contactDto.getName().isEmpty()){
            isNameValidated = true;
        }
            if(isNameValidated == true){
                isContactValidated = contactDao.addContact(contactDto);
            }
        }
        return isContactValidated;
    }

    @Override
    public ContactDto getContactById(int id) {
        ContactDto dto = null;
        if (id > 0){
            dto = contactDao.getContactById(id);
        }
        return dto;
    }

    @Override
    public List<ContactDto> getAllContact() {
        System.out.println("Get All Contact Service Method Started");
        System.out.println("Get All Contact  Service Method Ended");

        return contactDao.getAllContact();
    }

    @Override
    public ContactDto getContactByName(String name) {
        System.out.println("Get Contact By Name Service Started");
        ContactDto dto = null;
        if(name != null && !name.isEmpty()){
            dto = contactDao.getContactByName(name);
        }
        System.out.println("Get Contact By Name Service Ended");
        return dto;
    }

    @Override
    public void deleteById(int id) {
        if (id > 0)
            contactDao.deleteById(id);

    }

    @Override
    public void validateAndUpdate(ContactDto contactDto) {
        if (contactDto != null){
            contactDao.updateContact(contactDto);
        }
    }
}
