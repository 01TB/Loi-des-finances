package com.project.loi_finances.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity
@Table(name = "recette_fiscale_interieure", schema = "public")
public class RecetteFiscaleInterieure {
    @Id
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "valeur", nullable = false, precision = 6, scale = 2)
    private BigDecimal valeur;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_nature_impot_interieure", nullable = false)
    private NatureImpotInterieure idNatureImpotInterieure;

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

    public NatureImpotInterieure getIdNatureImpotInterieure() {
        return idNatureImpotInterieure;
    }

    public void setIdNatureImpotInterieure(NatureImpotInterieure idNatureImpotInterieure) {
        this.idNatureImpotInterieure = idNatureImpotInterieure;
    }

    public Periode getIdPeriode() {
        return idPeriode;
    }

    public void setIdPeriode(Periode idPeriode) {
        this.idPeriode = idPeriode;
    }

}