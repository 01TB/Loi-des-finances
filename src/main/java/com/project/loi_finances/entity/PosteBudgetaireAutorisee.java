package com.project.loi_finances.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity
@Table(name = "poste_budgetaire_autorisee", schema = "public")
public class PosteBudgetaireAutorisee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "valeur", nullable = false, precision = 6, scale = 2)
    private BigDecimal valeur;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_institution", nullable = false)
    private Institution idInstitution;

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

    public Institution getIdInstitution() {
        return idInstitution;
    }

    public void setIdInstitution(Institution idInstitution) {
        this.idInstitution = idInstitution;
    }

    public Periode getIdPeriode() {
        return idPeriode;
    }

    public void setIdPeriode(Periode idPeriode) {
        this.idPeriode = idPeriode;
    }

}