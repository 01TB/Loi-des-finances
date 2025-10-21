package com.project.loi_finances.repository;

import com.project.loi_finances.entity.InvestissementPublic;
import com.project.loi_finances.entity.Periode;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface InvestissementPublicRepository extends JpaRepository<InvestissementPublic, Integer> {
    List<InvestissementPublic> findByIdPeriode(Periode idPeriode);
    List<InvestissementPublic> findByIdNatureInvestissementPublicId(Integer idNatureInvestissementPublic);
}