package com.mirestaurante.mirestaurante.dao;

import com.mirestaurante.mirestaurante.entity.PlatoRestaurante;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@RepositoryRestResource(
        path = "platosRestaurante",
        collectionResourceRel = "platosRestaurante")
@CrossOrigin("http://localhost:4200")
public interface PlatosRepository
        extends JpaRepository<PlatoRestaurante, Long> {
}
