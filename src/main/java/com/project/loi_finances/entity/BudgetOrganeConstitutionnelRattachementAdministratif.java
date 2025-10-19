package com.project.loi_finances.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity
@Table(name = "budget_organe_constitutionnel_rattachement_administratif", schema = "public")
public class BudgetOrganeConstitutionnelRattachementAdministratif {
    @Id
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "valeur", nullable = false, precision = 6, scale = 2)
    private BigDecimal valeur;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_organe_constitutionnel", nullable = false)
    private OrganeConstitutionnel idOrganeConstitutionnel;

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

    public OrganeConstitutionnel getIdOrganeConstitutionnel() {
        return idOrganeConstitutionnel;
    }

    public void setIdOrganeConstitutionnel(OrganeConstitutionnel idOrganeConstitutionnel) {
        this.idOrganeConstitutionnel = idOrganeConstitutionnel;
    }

    public Periode getIdPeriode() {
        return idPeriode;
    }

    public void setIdPeriode(Periode idPeriode) {
        this.idPeriode = idPeriode;
    }

}