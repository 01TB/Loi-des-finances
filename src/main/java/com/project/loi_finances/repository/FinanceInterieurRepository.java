package com.project.loi_finances.repository;

import com.project.loi_finances.entity.FinancementInterieur;
import com.project.loi_finances.entity.Periode;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FinancementInterieurRepository extends JpaRepository<FinancementInterieur, Integer> {
    List<FinancementInterieur> findByIdPeriode(Periode idPeriode);
}