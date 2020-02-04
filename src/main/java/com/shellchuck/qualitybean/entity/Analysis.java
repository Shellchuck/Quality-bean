package com.shellchuck.qualitybean.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.criteria.CriteriaBuilder;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@Entity
@Table(name = "analyses")
public class Analysis {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotBlank
    private String analysisCode;

    @ManyToOne
    private Defect defect;

    @ManyToOne
    private Responsible responsible;

    @ManyToOne
    private Claim claim;

    @NotBlank
    private String containment;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDateTime containmentDate;

    private String rootCause;

    private String correctiveActions;

    @DateTimeFormat(pattern = "yyyy-MM-dd")

    private LocalDateTime correctiveDate;

    private String verification;

    @DateTimeFormat(pattern = "yyyy-MM-dd")

    private LocalDateTime verificationDate;




    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAnalysisCode() {
        return analysisCode;
    }

    public void setAnalysisCode(String analysisCode) {
        this.analysisCode = analysisCode;
    }

    public String getContainment() {
        return containment;
    }

    public void setContainment(String containment) {
        this.containment = containment;
    }

    public LocalDateTime getContainmentDate() {
        return containmentDate;
    }

    public void setContainmentDate(LocalDateTime containmentDate) {
        this.containmentDate = containmentDate;
    }

    public String getRootCause() {
        return rootCause;
    }

    public void setRootCause(String rootCause) {
        this.rootCause = rootCause;
    }

    public String getCorrectiveActions() {
        return correctiveActions;
    }

    public void setCorrectiveActions(String correctiveActions) {
        this.correctiveActions = correctiveActions;
    }

    public LocalDateTime getCorrectiveDate() {
        return correctiveDate;
    }

    public void setCorrectiveDate(LocalDateTime correctiveDate) {
        this.correctiveDate = correctiveDate;
    }

    public String getVerification() {
        return verification;
    }

    public void setVerification(String verification) {
        this.verification = verification;
    }

    public LocalDateTime getVerificationDate() {
        return verificationDate;
    }

    public void setVerificationDate(LocalDateTime verificationDate) {
        this.verificationDate = verificationDate;
    }

    public Claim getClaim() {
        return claim;
    }

    public void setClaim(Claim claim) {
        this.claim = claim;
    }

    public Responsible getResponsible() {
        return responsible;
    }

    public void setResponsible(Responsible responsible) {
        this.responsible = responsible;
    }

    public Defect getDefect() {
        return defect;
    }

    public void setDefect(Defect defect) {
        this.defect = defect;
    }
}
