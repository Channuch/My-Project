package com.xworkz.contactbook.dao;

import com.xworkz.contactbook.dto.UserDto;

public interface UserDao {
    boolean addUser(UserDto user);
    UserDto getUserByEmail(String mail);
}
