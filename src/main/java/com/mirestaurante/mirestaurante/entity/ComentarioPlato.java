package com.mirestaurante.mirestaurante.entity;

import lombok.Getter;
import lombok.Setter;

import lombok.Getter;
import lombok.Setter;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "comentario_plato")
@Getter
public class ComentarioPlato {

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
    @JoinColumn(name = "plato_id", nullable = false)
    @JsonBackReference
    private PlatoRestaurante platoRestaurante;
}

