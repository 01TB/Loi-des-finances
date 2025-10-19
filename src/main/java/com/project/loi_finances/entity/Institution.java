package com.project.loi_finances.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "institution", schema = "public", uniqueConstraints = {
        @UniqueConstraint(name = "institution_titre_key", columnNames = {"titre"})
})
public class Institution {
    @Id
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "titre", nullable = false, length = 150)
    private String titre;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

}