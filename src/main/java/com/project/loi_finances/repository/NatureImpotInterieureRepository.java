package com.project.loi_finances.repository;

import com.project.loi_finances.entity.NatureImpotInterieure;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NatureImpotInterieureRepository extends JpaRepository<NatureImpotInterieure, Integer> {
    NatureImpotInterieure findByLibelle(String libelle);
}