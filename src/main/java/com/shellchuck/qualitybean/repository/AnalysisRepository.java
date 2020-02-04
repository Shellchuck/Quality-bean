package com.shellchuck.qualitybean.repository;

import com.shellchuck.qualitybean.entity.Analysis;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface AnalysisRepository extends JpaRepository<Analysis, Integer> {

    List<Analysis> findAllByOrderByDefectDesc();

}
