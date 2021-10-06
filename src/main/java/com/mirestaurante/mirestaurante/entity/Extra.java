package com.mirestaurante.mirestaurante.entity;



import lombok.Getter;
import lombok.Setter;
import com.fasterxml.jackson.annotation.JsonBackReference;


import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "extra")
@Getter
@Setter
public class Extra {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "nombre")
    private String nombre;

    @Column(name = "coste")
    private BigDecimal coste;

    @ManyToOne
    @JoinColumn(name = "plato_id", nullable = false)
    @JsonBackReference
    private PlatoRestaurante platoRestaurante;
}
