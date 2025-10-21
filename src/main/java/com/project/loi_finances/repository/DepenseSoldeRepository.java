package com.project.loi_finances.repository;

import com.project.loi_finances.entity.DepenseSolde;
import com.project.loi_finances.entity.Periode;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DepenseSoldeRepository extends JpaRepository<DepenseSolde, Integer> {
    List<DepenseSolde> findByIdPeriode(Periode idPeriode);
    List<DepenseSolde> findByIdNatureDepenseSoldeId(Integer idNatureDepenseSolde);
}