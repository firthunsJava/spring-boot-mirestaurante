package com.mirestaurante.mirestaurante.entity;


import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "cliente")
@Getter
@Setter
public class Cliente {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "nombre")
    private String nombre;

    @Column(name = "apellidos")
    private String apellidos;

    @Column(name = "dni")
    private String dni;

    @Column(name = "telefono")
    private int telefono;

    @Column(name = "email")
    private String email;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cliente")
    @JsonManagedReference
    private Set<Pedido> pedidos;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cliente")
    @JsonManagedReference
    private Set<PlatoFav> platosFav;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cliente")
    @JsonManagedReference
    private Set<RestauranteFav> restaurantesFav;

    @OneToOne
    @PrimaryKeyJoinColumn
    private User user;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cliente")
    @JsonManagedReference
    private Set<Direccion> direcciones;
}