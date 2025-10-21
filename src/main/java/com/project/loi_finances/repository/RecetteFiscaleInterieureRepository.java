package com.project.loi_finances.repository;

import com.project.loi_finances.entity.RecetteFiscaleInterieure;
import com.project.loi_finances.entity.Periode;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RecetteFiscaleInterieureRepository extends JpaRepository<RecetteFiscaleInterieure, Integer> {
    List<RecetteFiscaleInterieure> findByIdPeriode(Periode idPeriode);
    List<RecetteFiscaleInterieure> findByIdNatureImpotInterieureId(Integer idNatureImpotInterieure);
}