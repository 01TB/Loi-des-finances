package com.project.loi_finances.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity
@Table(name = "budget_autre_rattachement_administratif", schema = "public")
public class BudgetAutreRattachementAdministratif {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "valeur", nullable = false, precision = 6, scale = 2)
    private BigDecimal valeur;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_autre_institution", nullable = false)
    private AutreInstitution idAutreInstitution;

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

    public AutreInstitution getIdAutreInstitution() {
        return idAutreInstitution;
    }

    public void setIdAutreInstitution(AutreInstitution idAutreInstitution) {
        this.idAutreInstitution = idAutreInstitution;
    }

    public Periode getIdPeriode() {
        return idPeriode;
    }

    public void setIdPeriode(Periode idPeriode) {
        this.idPeriode = idPeriode;
    }

}