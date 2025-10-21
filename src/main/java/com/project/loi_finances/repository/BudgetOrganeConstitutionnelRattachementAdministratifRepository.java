package com.project.loi_finances.repository;

import com.project.loi_finances.entity.BudgetOrganeConstitutionnelRattachementAdministratif;
import com.project.loi_finances.entity.Periode;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BudgetOrganeConstitutionnelRattachementAdministratifRepository extends JpaRepository<BudgetOrganeConstitutionnelRattachementAdministratif, Integer> {
    List<BudgetOrganeConstitutionnelRattachementAdministratif> findByIdPeriode(Periode idPeriode);
    List<BudgetOrganeConstitutionnelRattachementAdministratif> findByIdOrganeConstitutionnelId(Integer idOrganeConstitutionnel);
}