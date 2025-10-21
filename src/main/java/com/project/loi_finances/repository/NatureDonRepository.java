package com.project.loi_finances.repository;

import com.project.loi_finances.entity.NatureDon;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NatureDonRepository extends JpaRepository<NatureDon, Integer> {
    NatureDon findByLibelle(String libelle);
}