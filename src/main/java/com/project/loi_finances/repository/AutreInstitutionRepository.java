package com.project.loi_finances.repository;

import com.project.loi_finances.entity.AutreInstitution;
import com.project.loi_finances.entity.Periode;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AutreInstitutionRepository extends JpaRepository<AutreInstitution, Integer> {
    AutreInstitution findByTitre(String titre);
}