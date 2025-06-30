package com.xworkz.contactbook.service;

import com.xworkz.contactbook.dao.UserDao;
import com.xworkz.contactbook.dao.UserDaoImpl;
import com.xworkz.contactbook.dto.UserDto;

public class UserServiceImpl implements UserService{

    UserDao userDao = new UserDaoImpl();

    @Override
    public boolean validateUser(UserDto user) {
      boolean isUserValidated = false;
      boolean isUserNameValidated = false;
        if(user != null){
           if(user.getUserName() != null && !user.getUserName().isEmpty()){
               isUserNameValidated = true;
           }
           if(isUserNameValidated){
               isUserValidated = userDao.addUser(user);
           }
      }
        return isUserValidated;
    }

    @Override
    public UserDto getUserByEmail(String mail) {
        UserDto dto = null;
        if(mail!= null && !mail.isEmpty()){
            dto=userDao.getUserByEmail(mail);
        }
        return dto;
    }
}
