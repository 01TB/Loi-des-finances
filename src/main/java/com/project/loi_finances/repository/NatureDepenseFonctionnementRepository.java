package com.project.loi_finances.repository;

import com.project.loi_finances.entity.NatureDepenseFonctionnement;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NatureDepenseFonctionnementRepository extends JpaRepository<NatureDepenseFonctionnement, Integer> {
    NatureDepenseFonctionnement findByLibelle(String libelle);
}