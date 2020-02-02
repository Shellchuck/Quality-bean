package com.shellchuck.qualitybean.repository;

import com.shellchuck.qualitybean.entity.Status;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StatusRepository extends JpaRepository<Status, Integer> {
}
