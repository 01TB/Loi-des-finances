package com.project.loi_finances.repository;

import com.project.loi_finances.entity.Institution;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface InstitutionRepository extends JpaRepository<Institution, Integer> {
    Institution findByTitre(String titre);
}