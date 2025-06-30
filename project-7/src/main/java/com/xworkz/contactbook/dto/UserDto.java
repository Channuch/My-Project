package com.xworkz.contactbook.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "user_info")
public class UserDto {
    @Id
    @Column(name ="id")
    @GenericGenerator(name = "ref", strategy = "increment")
    @GeneratedValue(generator = "ref")
    private int id;
    @Column(name = "u_name")
    private String userName;
    @Column(name = "u_last_name")
    private String lastName;
    @Column(name = "u_phone")
    private long userPhoneNo;
    @Column(name = "u_email")
    private String userMail;
    @Column(name = "u_password")
    private String password;
    @Column(name = "cnfm_password")
    private String cnfmPassword;
    @Column(name = "address")
    private String address;



}
