package com.project.loi_finances.repository;

import com.project.loi_finances.entity.PosteBudgetaireAutorisee;
import com.project.loi_finances.entity.Periode;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PosteBudgetaireAutoriseeRepository extends JpaRepository<PosteBudgetaireAutorisee, Integer> {
    List<PosteBudgetaireAutorisee> findByIdPeriode(Periode idPeriode);
    List<PosteBudgetaireAutorisee> findByIdInstitutionId(Integer idInstitution);
}