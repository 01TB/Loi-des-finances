package com.project.loi_finances.repository;

import com.project.loi_finances.entity.DepenseFonctionnement;
import com.project.loi_finances.entity.Periode;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DepenseFonctionnementRepository extends JpaRepository<DepenseFonctionnement, Integer> {
    List<DepenseFonctionnement> findByIdPeriode(Periode idPeriode);
    List<DepenseFonctionnement> findByIdNatureDepenseFonctionnementId(Integer idNatureDepenseFonctionnement);
}