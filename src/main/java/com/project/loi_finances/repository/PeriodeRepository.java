package com.project.loi_finances.repository;

import com.project.loi_finances.entity.Periode;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PeriodeRepository extends JpaRepository<Periode, Integer> {
    Periode findByAnneeDebut(Integer anneeDebut);
    Periode findByAnneeFin(Integer anneeFin);
}