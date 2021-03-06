package com.mirestaurante.mirestaurante.dao;

import com.mirestaurante.mirestaurante.entity.Restaurante;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestParam;

@CrossOrigin("http://localhost:4200")
@RepositoryRestResource
public interface RestauranteRepository extends JpaRepository<Restaurante, Long> {
    // SELECT * FROM restaurante where categoria_id = ?
    Page<Restaurante> findByCategoriaId(
            @RequestParam("id") Long id, Pageable pageable);

    // SELECT * FROM Restaurante r WHERE r.nombre LIKE CONCAT('%', :name, '%')
    Page<Restaurante> findByNombreContaining(
            @RequestParam("nombre") String nombre, Pageable pageable);


    Restaurante findRestauranteById(Long id);
}
