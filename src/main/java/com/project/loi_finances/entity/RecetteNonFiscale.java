package com.project.loi_finances.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity
@Table(name = "recette_non_fiscale", schema = "public")
public class RecetteNonFiscale {
    @Id
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "valeur", nullable = false, precision = 6, scale = 2)
    private BigDecimal valeur;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_nature_recette_non_fiscale", nullable = false)
    private NatureRecetteNonFiscale idNatureRecetteNonFiscale;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_periode", nullable = false)
    private Periode idPeriode;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public BigDecimal getValeur() {
        return valeur;
    }

    public void setValeur(BigDecimal valeur) {
        this.valeur = valeur;
    }

    public NatureRecetteNonFiscale getIdNatureRecetteNonFiscale() {
        return idNatureRecetteNonFiscale;
    }

    public void setIdNatureRecetteNonFiscale(NatureRecetteNonFiscale idNatureRecetteNonFiscale) {
        this.idNatureRecetteNonFiscale = idNatureRecetteNonFiscale;
    }

    public Periode getIdPeriode() {
        return idPeriode;
    }

    public void setIdPeriode(Periode idPeriode) {
        this.idPeriode = idPeriode;
    }

}