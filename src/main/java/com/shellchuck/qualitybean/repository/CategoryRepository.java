package com.shellchuck.qualitybean.repository;

import com.shellchuck.qualitybean.entity.Analysis;
import com.shellchuck.qualitybean.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Integer> {

}
