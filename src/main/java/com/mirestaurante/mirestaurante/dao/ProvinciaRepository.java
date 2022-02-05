package com.mirestaurante.mirestaurante.dao;

import com.mirestaurante.mirestaurante.entity.Provincia;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;
import java.util.List;
@RepositoryRestResource
@CrossOrigin("http://localhost:4200")
public interface ProvinciaRepository extends JpaRepository<Provincia, Integer> {
    List<Provincia> findByPaisCode(@Param("code") String code);
}