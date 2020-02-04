package com.jmu.demo.entity;

import lombok.Data;

import javax.persistence.*;

@Data
@Table(name = "user")
@Entity
public class User {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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
}
