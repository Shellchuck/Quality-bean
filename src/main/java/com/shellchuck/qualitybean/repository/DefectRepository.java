package com.shellchuck.qualitybean.repository;

import com.shellchuck.qualitybean.entity.Category;
import com.shellchuck.qualitybean.entity.Defect;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DefectRepository extends JpaRepository<Defect, Integer> {
}
