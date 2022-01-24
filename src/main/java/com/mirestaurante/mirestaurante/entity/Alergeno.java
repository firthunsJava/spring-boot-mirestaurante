package com.mirestaurante.mirestaurante.entity;


import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name ="alergeno")
@Getter
@Setter
public class Alergeno {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "alergeno")
    private String alergeno;

    @ManyToOne
    @JoinColumn(name = "plato_id", nullable = false)
    @JsonBackReference(value="alergenos")
    private PlatoRestaurante platoRestaurante;

}
