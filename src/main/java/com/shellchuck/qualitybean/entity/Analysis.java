package com.shellchuck.qualitybean.entity;

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
    @NotBlank
    private String containment;

    private LocalDateTime containmentDate;

    private String rootCause;

    private String correctiveActions;

    private LocalDateTime correctiveDate;

    private String verification;

    private LocalDateTime verificationDate;

    @ManyToOne
    @NotNull
    private Claim claim;

    @ManyToOne
    @NotNull
    private Responsible responsible;

    @ManyToOne
    @NotNull
    private Defect defect;


}
