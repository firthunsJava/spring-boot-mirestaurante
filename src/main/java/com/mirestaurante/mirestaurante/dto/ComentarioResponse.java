package com.mirestaurante.mirestaurante.dto;


import lombok.Data;

@Data
public class ComentarioResponse {

    private String respuesta;
    private  String email;
    private  String comentario;

    private int puntuacion;


    public ComentarioResponse(String respuesta, String email, String comentario, int puntuacion) {
        this.respuesta = respuesta;
        this.email = email;
        this.comentario = comentario;
        this.puntuacion = puntuacion;
    }
}
