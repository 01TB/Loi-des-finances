package com.project.loi_finances.repository;

import com.project.loi_finances.entity.Don;
import com.project.loi_finances.entity.Periode;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DonRepository extends JpaRepository<Don, Integer> {
    List<Don> findByIdPeriode(Periode idPeriode);
    List<Don> findByIdNatureDonId(Integer idNatureDon);
}