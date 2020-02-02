package com.shellchuck.qualitybean.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "customers")
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotBlank
    private String name;
    @NotBlank
    private String address;

    private String contactName;

    private String email;

    private String phoneNo;

    @OneToMany(mappedBy = "customer")
    private List<Claim> claims = new ArrayList<>();



}
