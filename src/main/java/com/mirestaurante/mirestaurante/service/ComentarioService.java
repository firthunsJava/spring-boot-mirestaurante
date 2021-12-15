package com.mirestaurante.mirestaurante.service;

import com.mirestaurante.mirestaurante.dao.ComentarioRestRepository;
import com.mirestaurante.mirestaurante.dao.RestauranteRepository;
import com.mirestaurante.mirestaurante.dto.ComentarioDTO;
import com.mirestaurante.mirestaurante.dto.ComentarioResponse;
import com.mirestaurante.mirestaurante.entity.ComentarioRest;
import com.mirestaurante.mirestaurante.entity.Restaurante;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
public class ComentarioService {
    private ComentarioRestRepository comentarioRestRepository;
    private RestauranteRepository restauranteRepository;

    @Autowired
    public ComentarioService(ComentarioRestRepository comentarioRestRepository, RestauranteRepository restauranteRepository) {
        this.comentarioRestRepository = comentarioRestRepository;
        this.restauranteRepository = restauranteRepository;
    }

    @Transactional

    public ComentarioResponse addComentario( ComentarioDTO comentarioDTO    ){
        ComentarioRest comentarioRest = comentarioDTO.getComentario();
        Restaurante restaurante = restauranteRepository.findRestauranteById(
                comentarioDTO.getRestaurante().getId());
        comentarioRest.setRestaurante(restaurante);
        restaurante.getComentariosRest().add( comentarioRest);

        restauranteRepository.save( restaurante );
        return  new ComentarioResponse(
              "Comentario insertado",
              comentarioDTO.getComentario().getEmail(),
                comentarioDTO.getComentario().getComentario(),
                comentarioDTO.getComentario().getPuntuacion()
        );
    }

//    video me he quedado en el
}
