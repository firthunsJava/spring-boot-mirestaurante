package com.mirestaurante.mirestaurante.dao;

import com.mirestaurante.mirestaurante.entity.ImgRestaurante;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

// con anotacion jpa le cambiamos el nombre

@RepositoryRestResource(collectionResourceRel = "imgRestaurante", path= "img-restaurante")
public interface ImgRestauranteRepository extends JpaRepository<ImgRestaurante, Long> {
}
