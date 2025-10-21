package com.project.loi_finances.repository;

import com.project.loi_finances.entity.NatureInvestissementPublic;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NatureInvestissementPublicRepository extends JpaRepository<NatureInvestissementPublic, Integer> {
    NatureInvestissementPublic findByLibelle(String libelle);
}