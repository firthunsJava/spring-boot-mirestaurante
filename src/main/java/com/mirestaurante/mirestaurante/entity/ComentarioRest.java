package com.mirestaurante.mirestaurante.entity;

import lombok.*;


import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "comentario_rest")
@Getter
@Setter

public class ComentarioRest {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "email")
    private String email;

    @Column(name = "comentario")
    private String comentario;

    @Column(name = "puntuacion")
    private int puntuacion;

    @ManyToOne
    @JoinColumn(name = "restaurante_id", nullable = false)
    @JsonBackReference
    private Restaurante restaurante;


}


