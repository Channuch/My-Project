package com.xworkz.contactbook.dto;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "contact_info")
public class ContactDto {

    @Id
    @Column(name = "id")
    @GenericGenerator(name = "ref", strategy = "increment")
    @GeneratedValue(generator = "ref")
    private int id;
    @Column(name = "contact_name")
    private String name;
    @Column(name = "phone_number")
    private long phoneNumber;
    @Column(name = "email")
    private String email;
    @Column(name = "address")
    private String address;
}
