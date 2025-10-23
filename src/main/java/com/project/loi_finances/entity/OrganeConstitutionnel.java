package com.project.loi_finances.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "organe_constitutionnel", schema = "public", uniqueConstraints = {
        @UniqueConstraint(name = "organe_constitutionnel_titre_key", columnNames = {"titre"})
})
public class OrganeConstitutionnel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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