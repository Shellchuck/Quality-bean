package com.shellchuck.qualitybean.repository;

import com.shellchuck.qualitybean.entity.Category;
import com.shellchuck.qualitybean.entity.Claim;
import com.shellchuck.qualitybean.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ClaimRepository extends JpaRepository<Claim, Integer> {

    List<Claim> findAllByOrderByCreatedOnDesc();

    List<Claim> findFirst3ByOrderByCreatedOnDesc();

    @Query(value = "SELECT * FROM claims JOIN customers ON customer_id = customers.id WHERE name LIKE CONCAT('%', :name, '%')", nativeQuery = true)
    List<Claim> findAllByCustomerName(@Param("name") String name);

    @Query(value = "SELECT * FROM claims JOIN claims_commodities ON claims.id = claims_commodities.commodities_id JOIN commodities ON commodities.id = claims_commodities.commodities_id HAVING commodities.commodity_name LIKE  CONCAT('%', ?1, '%')", nativeQuery = true)
    List<Claim> findAllByCustomerCommodity(String name);

}
