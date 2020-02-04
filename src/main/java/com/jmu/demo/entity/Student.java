package com.jmu.demo.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "student")
public class Student {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "phone")
    private String phone;
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
    @Column(name = "userId")
    private Integer userId;
}
