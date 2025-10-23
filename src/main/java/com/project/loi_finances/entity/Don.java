package com.project.loi_finances.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity
@Table(name = "don", schema = "public")
public class Don {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "valeur", nullable = false, precision = 6, scale = 2)
    private BigDecimal valeur;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_nature_don", nullable = false)
    private NatureDon idNatureDon;

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

    public NatureDon getIdNatureDon() {
        return idNatureDon;
    }

    public void setIdNatureDon(NatureDon idNatureDon) {
        this.idNatureDon = idNatureDon;
    }

    public Periode getIdPeriode() {
        return idPeriode;
    }

    public void setIdPeriode(Periode idPeriode) {
        this.idPeriode = idPeriode;
    }

}