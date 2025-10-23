package com.project.loi_finances.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;

@Entity
@Table(name = "autre_rubrique_depense", schema = "public")
public class AutreRubriqueDepense {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "valeur", precision = 6, scale = 2)
    private BigDecimal valeur;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_nature_autre_rubrique_depense", nullable = false)
    private NatureAutreRubriqueDepense idNatureAutreRubriqueDepense;

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

    public NatureAutreRubriqueDepense getIdNatureAutreRubriqueDepense() {
        return idNatureAutreRubriqueDepense;
    }

    public void setIdNatureAutreRubriqueDepense(NatureAutreRubriqueDepense idNatureAutreRubriqueDepense) {
        this.idNatureAutreRubriqueDepense = idNatureAutreRubriqueDepense;
    }

    public Periode getIdPeriode() {
        return idPeriode;
    }

    public void setIdPeriode(Periode idPeriode) {
        this.idPeriode = idPeriode;
    }

}