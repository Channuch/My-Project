package com.xworkz.contactbook.dao;

import com.xworkz.contactbook.dto.ContactDto;

import java.util.List;

public interface ContactDao {

    boolean addContact(ContactDto contactDto);

    ContactDto getContactById(int id);

    List<ContactDto> getAllContact();

    ContactDto getContactByName(String name);

    void deleteById(int id);

    public void updateContact(ContactDto contactDto);


}
