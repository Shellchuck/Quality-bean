package com.shellchuck.qualitybean.repository;

import com.shellchuck.qualitybean.entity.Analysis;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface AnalysisRepository extends JpaRepository<Analysis, Integer> {

    List<Analysis> findAllByOrderByDefectDesc();

    List<Analysis> findAllByClaimId(Integer id);

    // @Query("select a from Analysis a join Defect d where d.name like %:name%")
    @Query(value = "SELECT * FROM analyses JOIN defects ON defect_id = defects.id WHERE name LIKE CONCAT('%', :name, '%')", nativeQuery = true)
    List<Analysis> findAllByDefectName(@Param("name") String name);

}
