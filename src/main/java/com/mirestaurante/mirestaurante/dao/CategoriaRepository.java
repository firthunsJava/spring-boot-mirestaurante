package com.mirestaurante.mirestaurante.dao;

import com.mirestaurante.mirestaurante.entity.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface CategoriaRepository extends JpaRepository<Categoria, Long> {
}
