package com.shellchuck.qualitybean.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import java.time.LocalDate;
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
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate revisionDate;

    @ManyToMany(mappedBy = "commodities")
    private List<Claim> claims = new ArrayList<>();

    @ManyToOne
    @NotNull
    private Category category;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCommodityName() {
        return commodityName;
    }

    public void setCommodityName(String commodityName) {
        this.commodityName = commodityName;
    }

    public String getReferenceCode() {
        return referenceCode;
    }

    public void setReferenceCode(String referenceCode) {
        this.referenceCode = referenceCode;
    }

    public String getTechnicalSpec() {
        return technicalSpec;
    }

    public void setTechnicalSpec(String technicalSpec) {
        this.technicalSpec = technicalSpec;
    }

    public LocalDate getRevisionDate() {
        return revisionDate;
    }

    public void setRevisionDate(LocalDate revisionDate) {
        this.revisionDate = revisionDate;
    }

    public List<Claim> getClaims() {
        return claims;
    }

    public void setClaims(List<Claim> claims) {
        this.claims = claims;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
