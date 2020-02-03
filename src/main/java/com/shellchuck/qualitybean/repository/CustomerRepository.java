package com.shellchuck.qualitybean.repository;

import com.shellchuck.qualitybean.entity.Category;
import com.shellchuck.qualitybean.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {

}
