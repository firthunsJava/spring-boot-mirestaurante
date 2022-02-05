package com.mirestaurante.mirestaurante.dao;

import com.mirestaurante.mirestaurante.entity.Pais;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@RepositoryRestResource(collectionResourceRel = "paises", path =
        "paises")
@CrossOrigin("http://localhost:4200")
public interface PaisRepository extends JpaRepository<Pais, Integer>
{}
