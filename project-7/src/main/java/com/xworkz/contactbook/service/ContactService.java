package com.xworkz.contactbook.service;

import com.xworkz.contactbook.dto.ContactDto;

import java.util.List;

public interface ContactService {

    boolean validateContact(ContactDto contactDto);

    ContactDto getContactById(int id);

    List<ContactDto>  getAllContact();

    ContactDto getContactByName(String name);

    void deleteById(int id);

    void validateAndUpdate(ContactDto contactDto);
}
