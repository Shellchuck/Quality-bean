package com.shellchuck.qualitybean.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Past;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Table(name = "claims")
public class Claim {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotBlank
    private String issueNo;
    private String description;
    private Integer quantity;
    private Boolean recurrence;
    private LocalDateTime createdOn;
    private LocalDateTime updatedOn;
    @Past
    private LocalDateTime claimDate;
    private LocalDateTime closeDate;
    private String customerId;
    @NotBlank
    private String responsibleId;
    @NotBlank
    private String statusId;


    @PrePersist
    public void prePersist() {
        createdOn = LocalDateTime.now();
    }
    @PreUpdate
    public void preUpdate() {
        updatedOn = LocalDateTime.now();
    }



}
