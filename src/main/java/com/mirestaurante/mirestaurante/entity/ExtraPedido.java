package com.mirestaurante.mirestaurante.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;


@Entity
@Table(name = "extra_pedido")
@Getter
@Setter
public class ExtraPedido {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "nombre")
    private String nombre;

    @Column(name = "coste")
    private BigDecimal coste;

    @ManyToOne
    @JoinColumn(name = "plato_pedido_id", nullable = false)
    @JsonBackReference
    private PlatoPedido platoPedido;
}