package com.project.loi_finances.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "nature_droits_taxes_douane", schema = "public", uniqueConstraints = {
        @UniqueConstraint(name = "nature_droits_taxes_douane_libelle_key", columnNames = {"libelle"})
})
public class NatureDroitsTaxesDouane {
    @Id
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "libelle", nullable = false, length = 150)
    private String libelle;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLibelle() {
        return libelle;
    }

    public void setLibelle(String libelle) {
        this.libelle = libelle;
    }

}