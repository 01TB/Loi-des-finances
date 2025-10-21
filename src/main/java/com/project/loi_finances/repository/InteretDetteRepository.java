package com.project.loi_finances.repository;

import com.project.loi_finances.entity.InteretDette;
import com.project.loi_finances.entity.Periode;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface InteretDetteRepository extends JpaRepository<InteretDette, Integer> {
    List<InteretDette> findByIdPeriode(Periode idPeriode);
    List<InteretDette> findByIdNatureInteretDetteId(Integer idNatureInteretDette);
}