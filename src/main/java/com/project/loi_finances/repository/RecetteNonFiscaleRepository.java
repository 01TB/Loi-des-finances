package com.project.loi_finances.repository;

import com.project.loi_finances.entity.RecetteNonFiscale;
import com.project.loi_finances.entity.Periode;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RecetteNonFiscaleRepository extends JpaRepository<RecetteNonFiscale, Integer> {
    List<RecetteNonFiscale> findByIdPeriode(Periode idPeriode);
    List<RecetteNonFiscale> findByIdNatureRecetteNonFiscaleId(Integer idNatureRecetteNonFiscale);
}