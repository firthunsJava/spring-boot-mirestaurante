package com.mirestaurante.mirestaurante.entity;


import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "restaurante_fav")
@Getter
@Setter
public class RestauranteFav {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "cliente_id")
    @JsonBackReference(value="restaurantesFav")
    private Cliente cliente;

    @OneToOne
    @JoinColumn(name = "restaurante_id", referencedColumnName = "id")
    private Restaurante restaurante;
}
