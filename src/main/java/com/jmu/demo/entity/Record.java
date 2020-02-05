package com.jmu.demo.entity;

import lombok.Data;

import javax.persistence.*;
import java.sql.Date;

@Data
@Entity
@Table(name = "record")
public class Record {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(name = "time")
    private Date time;
    @Column(name = "travel")
    private String travel;
    @Column(name = "place")
    private String place;
    @Column(name = "back_time")
    private String backTime;
    @Column(name = "healthy")
    private String healthy;
    @Column(name = "heat")
    private double heat;
    @Column(name = "isIll")
    private String isIll;
    @Column(name = "isTouch")
    private String isTouch;
    @Column(name = "isQuarantine")
    private String isQuarantine;
    @Column(name = "remark")
    private String remark;
    @Column(name = "userId")
    private Integer userId;

}
