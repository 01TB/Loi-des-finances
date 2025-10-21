package com.project.loi_finances.repository;

import com.project.loi_finances.entity.BudgetInstitutionRattachementAdministratif;
import com.project.loi_finances.entity.Periode;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BudgetInstitutionRattachementAdministratifRepository extends JpaRepository<BudgetInstitutionRattachementAdministratif, Integer> {
    List<BudgetInstitutionRattachementAdministratif> findByIdPeriode(Periode idPeriode);
    List<BudgetInstitutionRattachementAdministratif> findByIdInstitutionId(Integer idInstitution);
}