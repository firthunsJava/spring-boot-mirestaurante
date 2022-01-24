package com.mirestaurante.mirestaurante.dto;

import com.mirestaurante.mirestaurante.entity.ComentarioRest;
import com.mirestaurante.mirestaurante.entity.Restaurante;
import lombok.Data;

@Data
public class ComentarioDTO {
    private ComentarioRest comentario;
    private Restaurante restaurante;

    public ComentarioDTO(ComentarioRest comentario, Restaurante restaurante) {
        this.comentario = comentario;
        this.restaurante = restaurante;
    }
}

