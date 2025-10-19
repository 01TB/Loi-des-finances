package com.project.loi_finances.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "periode", schema = "public", uniqueConstraints = {
        @UniqueConstraint(name = "periode_annee_debut_key", columnNames = {"annee_debut"}),
        @UniqueConstraint(name = "periode_annee_fin_key", columnNames = {"annee_fin"})
})
public class Periode {
    @Id
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "annee_debut", nullable = false)
    private Integer anneeDebut;

    @Column(name = "annee_fin", nullable = false)
    private Integer anneeFin;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getAnneeDebut() {
        return anneeDebut;
    }

    public void setAnneeDebut(Integer anneeDebut) {
        this.anneeDebut = anneeDebut;
    }

    public Integer getAnneeFin() {
        return anneeFin;
    }

    public void setAnneeFin(Integer anneeFin) {
        this.anneeFin = anneeFin;
    }

}