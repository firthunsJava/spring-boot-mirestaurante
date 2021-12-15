package com.mirestaurante.mirestaurante.controller;

import com.mirestaurante.mirestaurante.dto.ComentarioDTO;
import com.mirestaurante.mirestaurante.dto.ComentarioResponse;
import com.mirestaurante.mirestaurante.service.ComentarioService;
import org.springframework.web.bind.annotation.*;

@CrossOrigin("http://localhost:4200")
@RestController
@RequestMapping("/api/comentariosRest")
public class ComentarioController {
    private ComentarioService comentarioService;

    public ComentarioController(ComentarioService comentarioService){
        this.comentarioService = comentarioService;
         }
    @PostMapping("/add")
    public ComentarioResponse addComentario(  @RequestBody ComentarioDTO comentarioDTO ){
        return comentarioService.addComentario( comentarioDTO);
    }

}
