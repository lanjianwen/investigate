package com.jmu.demo.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@Table(name = "user")
@Entity
public class User {
    @Id
    @Column(name = "id")
    private Integer id;
    @Column(name = "username")
    private String username;
    @Column(name = "phone")
    private String phone;
    @Column(name = "password")
    private String password;
    @Column(name = "role")
    private String role;
    @Column(name = "flag")
    private Integer flag;
    @Column(name = "area")
    private String area;
    @Column(name = "department")
    private String department;
    @Column(name = "name")
    private String name;
    @Column(name = "sex")
    private String sex;
    @Column(name = "address")
    private String address;
    @Column(name = "isSchool")
    private Integer isSchool;
}
