package com.mirestaurante.mirestaurante.config;

import com.mirestaurante.mirestaurante.entity.Categoria;
import com.mirestaurante.mirestaurante.entity.Restaurante;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.http.HttpMethod;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

import javax.persistence.EntityManager;
import javax.persistence.metamodel.EntityType;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Configuration
public class MiDataRestConfig implements RepositoryRestConfigurer {

    @Value("${allowed.origins}")
    private String[] allowed;

    private EntityManager entityManager;
    @Autowired // servidor por defecto
    public MiDataRestConfig(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Override
    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors) {
        HttpMethod[] theUnsupportedActions = { HttpMethod.PUT, HttpMethod.POST, HttpMethod.DELETE, HttpMethod.PATCH};


        disableHttpMethods(Restaurante.class, config,theUnsupportedActions );
        disableHttpMethods(Categoria.class, config,theUnsupportedActions );


        cors.addMapping("/api/**").allowedOrigins(allowed);

        // llamamos a la función donde expondremos las ids
        exposeIds(config);
    }

    private void exposeIds(RepositoryRestConfiguration config) {
        // cogemos la lista de otdas las entidaddes del encargado de entidades
        Set<EntityType<?>> entities = entityManager.getMetamodel().getEntities();

        // Creamos un array con los tipos de la entidad
        List<Class> entityClass = new ArrayList<>();

        // Cogemos los tipos de entidad para las entidades.

        for(EntityType tempEntityType: entities){
            entityClass.add(tempEntityType.getJavaType());
        }


        // exponemos el id de las entidaddes para el array de tipos de entidad
        Class[] domainTypes = entityClass.toArray(new Class[0]);
        config.exposeIdsFor(domainTypes);
    }

    private void disableHttpMethods(Class theClass, RepositoryRestConfiguration config, HttpMethod[] theUnsupportedActions) {

        config.getExposureConfiguration()
                .forDomainType( theClass)
                .withItemExposure((metdata, httpMethods) -> httpMethods.disable(theUnsupportedActions))
                .withCollectionExposure((metdata, httpMethods) -> httpMethods.disable(theUnsupportedActions));
    }
}
