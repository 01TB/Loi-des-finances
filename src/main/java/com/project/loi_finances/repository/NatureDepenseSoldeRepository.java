package com.project.loi_finances.repository;

import com.project.loi_finances.entity.NatureDepenseSolde;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NatureDepenseSoldeRepository extends JpaRepository<NatureDepenseSolde, Integer> {
    NatureDepenseSolde findByLibelle(String libelle);
}