package com.mirestaurante.mirestaurante.entity;


import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "img_restaurante")
@Getter
@Setter
public class ImgRestaurante {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "imagen")
    private String imagen;

    @ManyToOne
    @JoinColumn(name = "restaurante_id", nullable = false)
    @JsonBackReference(value="imgsRestaurante")
    private Restaurante restaurante;
}
