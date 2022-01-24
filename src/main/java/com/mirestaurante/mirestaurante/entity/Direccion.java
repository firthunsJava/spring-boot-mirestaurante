package com.mirestaurante.mirestaurante.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "direccion")
@Getter
@Setter
public class Direccion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "tipo_via")
    private String tipoVia;

    @Column(name = "calle")
    private String calle;

    @Column(name = "numero")
    private int numero;

    @Column(name = "ciudad")
    private String ciudad;

    @Column(name = "provincia")
    private String provincia;

    @Column(name = "pais")
    private String pais;

    @Column(name = "cp")
    private int cp;

    @ManyToOne
    @JoinColumn(name = "cliente_id")
    @JsonBackReference(value="direccionesCliente")
    private Cliente cliente;

    @OneToOne
    @PrimaryKeyJoinColumn
    @JsonBackReference(value="direccionesPedido")
    private Pedido pedido;



}
