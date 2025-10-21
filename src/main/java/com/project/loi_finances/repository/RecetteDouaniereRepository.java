package com.project.loi_finances.repository;

import com.project.loi_finances.entity.RecetteDouaniere;
import com.project.loi_finances.entity.Periode;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RecetteDouaniereRepository extends JpaRepository<RecetteDouaniere, Integer> {
    List<RecetteDouaniere> findByIdPeriode(Periode idPeriode);
    List<RecetteDouaniere> findByIdNatureDroitsTaxesDouaneId(Integer idNatureDroitsTaxesDouane);
}