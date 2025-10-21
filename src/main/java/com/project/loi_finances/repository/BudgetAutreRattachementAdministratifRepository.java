package com.project.loi_finances.repository;

import com.project.loi_finances.entity.BudgetAutreRattachementAdministratif;
import com.project.loi_finances.entity.Periode;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BudgetAutreRattachementAdministratifRepository extends JpaRepository<BudgetAutreRattachementAdministratif, Integer> {
    List<BudgetAutreRattachementAdministratif> findByIdPeriode(Periode idPeriode);
    List<BudgetAutreRattachementAdministratif> findByIdAutreInstitutionId(Integer idAutreInstitution);
}