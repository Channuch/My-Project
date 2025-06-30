package com.xworkz.contactbook.service;

import com.xworkz.contactbook.dto.UserDto;

public interface UserService {
    boolean validateUser(UserDto user);
    UserDto getUserByEmail(String mail);
}
