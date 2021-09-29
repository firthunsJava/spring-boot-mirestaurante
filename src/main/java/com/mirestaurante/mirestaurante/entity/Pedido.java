package com.mirestaurante.mirestaurante.entity;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "pedido")
@Getter
@Setter
public class Pedido {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "estado")
    private String estado;

    @Column(name = "localizador")
    private String localizador;

    @Column(name = "coste_transporte")
    private BigDecimal costeTransporte;

    @Column(name = "precio_total")
    private BigDecimal precioTotal;

    @Column(name = "fecha")
    private Date fecha;

    @Column(name = "cupon_descuento")
    private String cuponDescuento;

    @ManyToOne
    @JoinColumn(name = "restaurante_id", nullable = false)
    private Restaurante restaurante;

    @ManyToOne
    @JoinColumn(name = "cliente_id")
    private Cliente cliente;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "pedido")
    @JsonManagedReference
    private Set<PlatoPedido> platosPedido;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "direccion_id", referencedColumnName = "id")
    @JsonManagedReference
    private Direccion direccion;


    public void add(PlatoPedido platoPedido) {

        if (platoPedido != null) {
            if (platosPedido == null) {
                platosPedido = new HashSet<>();
            }

            platosPedido.add(platoPedido);
            platoPedido.setPedido(this);

        }

    }

}