package com.project.loi_finances.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "nature_don", schema = "public", uniqueConstraints = {
        @UniqueConstraint(name = "nature_don_libelle_key", columnNames = {"libelle"})
})
public class NatureDon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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