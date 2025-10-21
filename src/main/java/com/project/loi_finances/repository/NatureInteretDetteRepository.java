package com.project.loi_finances.repository;

import com.project.loi_finances.entity.NatureInteretDette;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NatureInteretDetteRepository extends JpaRepository<NatureInteretDette, Integer> {
    NatureInteretDette findByLibelle(String libelle);
}