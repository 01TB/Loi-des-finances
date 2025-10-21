package com.project.loi_finances.repository;

import com.project.loi_finances.entity.AutreRubriqueDepense;
import com.project.loi_finances.entity.Periode;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AutreRubriqueDepenseRepository extends JpaRepository<AutreRubriqueDepense, Integer> {
    List<AutreRubriqueDepense> findByIdPeriode(Periode idPeriode);
    List<AutreRubriqueDepense> findByIdNatureAutreRubriqueDepenseId(Integer idNatureAutreRubriqueDepense);
}