package com.project.loi_finances.repository;

import com.project.loi_finances.entity.OrganeConstitutionnel;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrganeConstitutionnelRepository extends JpaRepository<OrganeConstitutionnel, Integer> {
    OrganeConstitutionnel findByTitre(String titre);
}