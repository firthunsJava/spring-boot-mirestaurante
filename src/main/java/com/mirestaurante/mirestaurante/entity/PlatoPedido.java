package com.mirestaurante.mirestaurante.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name ="plato_pedido")
@Getter
@Setter
public class PlatoPedido {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private  Long id;

    @ManyToOne
    @JoinColumn(name = "pedido_id")
    @JsonBackReference(value="platosPedido")
    private Pedido pedido;

    @OneToOne
    @JoinColumn(name = "plato_id", referencedColumnName = "id")
    private PlatoRestaurante platoRestaurante;

    @Column(name = "cantidad")
    private int cantidad;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "platoPedido")
    @JsonManagedReference(value="extrasPedido")
    private Set<ExtraPedido> extrasPedido;



}
