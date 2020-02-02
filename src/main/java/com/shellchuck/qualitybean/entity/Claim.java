package com.shellchuck.qualitybean.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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

    @ManyToOne
    @NotNull
    private Customer customer;

    @ManyToOne
    @NotNull
    private Responsible responsible;

    @ManyToOne
    @NotNull
    private Status status;

    @OneToMany(mappedBy = "claim")
    private List<Analysis> analyses = new ArrayList<>();

    @ManyToMany
    @NotEmpty
    private List<Commodity> commodities = new ArrayList<>();


    @PrePersist
    public void prePersist() {
        createdOn = LocalDateTime.now();
    }
    @PreUpdate
    public void preUpdate() {
        updatedOn = LocalDateTime.now();
    }



}
