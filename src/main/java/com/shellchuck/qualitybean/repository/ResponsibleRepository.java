package com.shellchuck.qualitybean.repository;

import com.shellchuck.qualitybean.entity.Category;
import com.shellchuck.qualitybean.entity.Responsible;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ResponsibleRepository extends JpaRepository<Responsible, Integer> {

    Responsible findByUsername(String username);
}
