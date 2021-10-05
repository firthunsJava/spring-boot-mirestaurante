package com.mirestaurante.mirestaurante.dao;


import com.mirestaurante.mirestaurante.entity.Restaurante;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface RestauranteRepository extends JpaRepository<Restaurante, Long> {




}
