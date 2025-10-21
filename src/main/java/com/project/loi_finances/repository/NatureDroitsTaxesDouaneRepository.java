package com.project.loi_finances.repository;

import com.project.loi_finances.entity.NatureDroitsTaxesDouane;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NatureDroitsTaxesDouaneRepository extends JpaRepository<NatureDroitsTaxesDouane, Integer> {
    NatureDroitsTaxesDouane findByLibelle(String libelle);
}