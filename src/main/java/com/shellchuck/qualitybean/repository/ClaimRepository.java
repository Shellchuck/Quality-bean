package com.shellchuck.qualitybean.repository;

import com.shellchuck.qualitybean.entity.Category;
import com.shellchuck.qualitybean.entity.Claim;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ClaimRepository extends JpaRepository<Claim, Integer> {

    List<Claim> findAllByOrderByCreatedOnDesc();

    List<Claim> findFirst3ByOrderByCreatedOnDesc();

}
