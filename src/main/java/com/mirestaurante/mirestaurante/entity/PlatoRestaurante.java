package com.mirestaurante.mirestaurante.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Set;

@Entity
@Table(name = "plato_restaurante")
@Getter
@Setter
public class PlatoRestaurante {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "nombre")
    private String nombre;

    @Column(name = "descripcion")
    private String descripcion;

    @Column(name = "precio_base")
    private BigDecimal precioBase;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "platoRestaurante")
    @JsonManagedReference
    private Set<Alergeno> alergenos;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "platoRestaurante")
    @JsonManagedReference
    private Set<ImgPlato> imgsPlato;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "platoRestaurante")
    @JsonManagedReference
    private Set<Extra> extras;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "platoRestaurante")
    @JsonManagedReference
    private Set<ComentarioPlato> comentariosPlato;

    @OneToOne
    @PrimaryKeyJoinColumn
    private PlatoFav platoFav;

    @OneToOne
    @PrimaryKeyJoinColumn
    private PlatoPedido platoPedido;

    @ManyToOne
    @JoinColumn(name = "restaurante_id", nullable = false)
    @JsonBackReference
    private Restaurante restaurante;

}