package com.project.loi_finances.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity
@Table(name = "recette_douaniere", schema = "public")
public class RecetteDouaniere {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "valeur", nullable = false, precision = 6, scale = 2)
    private BigDecimal valeur;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_nature_droits_taxes_douane", nullable = false)
    private NatureDroitsTaxesDouane idNatureDroitsTaxesDouane;

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

    public NatureDroitsTaxesDouane getIdNatureDroitsTaxesDouane() {
        return idNatureDroitsTaxesDouane;
    }

    public void setIdNatureDroitsTaxesDouane(NatureDroitsTaxesDouane idNatureDroitsTaxesDouane) {
        this.idNatureDroitsTaxesDouane = idNatureDroitsTaxesDouane;
    }

    public Periode getIdPeriode() {
        return idPeriode;
    }

    public void setIdPeriode(Periode idPeriode) {
        this.idPeriode = idPeriode;
    }

}