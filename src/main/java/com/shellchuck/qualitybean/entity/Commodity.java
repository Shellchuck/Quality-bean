package com.shellchuck.qualitybean.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Past;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "commodities")
public class Commodity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotBlank
    private String commodityName;

    private String referenceCode;

    @NotBlank
    private String technicalSpec;

    @Past
    private LocalDateTime revisionDate;

    @ManyToMany(mappedBy = "commodities")
    private List<Claim> claims = new ArrayList<>();

    @ManyToOne
    private Category category;



}
