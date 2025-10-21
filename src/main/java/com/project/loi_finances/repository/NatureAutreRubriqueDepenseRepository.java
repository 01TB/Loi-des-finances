package com.project.loi_finances.repository;

import com.project.loi_finances.entity.NatureAutreRubriqueDepense;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NatureAutreRubriqueDepenseRepository extends JpaRepository<NatureAutreRubriqueDepense, Integer> {
    NatureAutreRubriqueDepense findByLibelle(String libelle);
}