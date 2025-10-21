package com.project.loi_finances.repository;

import com.project.loi_finances.entity.FinancementExterieur;
import com.project.loi_finances.entity.Periode;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FinancementExterieurRepository extends JpaRepository<FinancementExterieur, Integer> {
    List<FinancementExterieur> findByIdPeriode(Periode idPeriode);
}