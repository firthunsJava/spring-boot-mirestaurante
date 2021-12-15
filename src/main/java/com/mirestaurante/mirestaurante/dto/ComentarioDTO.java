package com.mirestaurante.mirestaurante.dto;

import com.mirestaurante.mirestaurante.entity.ComentarioRest;
import com.mirestaurante.mirestaurante.entity.Restaurante;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data

public class ComentarioDTO {
    private ComentarioRest comentario;
    private Restaurante restaurante;


}
