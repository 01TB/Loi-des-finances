package com.project.loi_finances.repository;

import com.project.loi_finances.entity.NatureRecetteNonFiscale;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NatureRecetteNonFiscaleRepository extends JpaRepository<NatureRecetteNonFiscale, Integer> {
    NatureRecetteNonFiscale findByLibelle(String libelle);
}