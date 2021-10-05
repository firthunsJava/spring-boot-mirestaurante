-- -----------------------------------------------------
-- Schema mi-restaurante
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mi-restaurante`;

CREATE SCHEMA `mi-restaurante`;
USE `mi-restaurante` ;

-- -----------------------------------------------------
-- Table `mi-restaurante`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`categoria` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `categoria` VARCHAR(255) DEFAULT NULL,
    `restaurante_id` BIGINT(20) NOT NULL,
    PRIMARY KEY (`id`)
    )
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mi-restaurante`.`restaurante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`restaurante` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(255) NULL DEFAULT NULL,
    `img_logo` VARCHAR(255) NULL DEFAULT NULL,
    `descripcion` VARCHAR(255) NULL DEFAULT NULL,
    `rango_max_reparto` INT(4) NULL DEFAULT NULL,
    `localizacion` VARCHAR(255) NULL DEFAULT NULL,
    `destacado` BOOLEAN NULL DEFAULT NULL,
    `activo` BOOLEAN NULL DEFAULT NULL,
    `date_created` DATETIME(6) NULL DEFAULT NULL,
    `date_updated` DATETIME(6) NULL DEFAULT NULL,
    `categoria_id` BIGINT(20) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_categoria` (`categoria_id`),
    CONSTRAINT `fk_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`))
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mi-restaurante`.`img_restaurante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`img_restaurante` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `imagen` VARCHAR(255) DEFAULT NULL,
  `restaurante_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_img_restaurante` (`restaurante_id`),
  CONSTRAINT `fk_img_restaurante` FOREIGN KEY (`restaurante_id`) REFERENCES `restaurante` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `mi-restaurante`.`horario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`horario` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `apertura` TIME DEFAULT NULL,
  `cierre` TIME DEFAULT NULL,
  `dia` INT(1) DEFAULT NULL,
  `restaurante_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_horario` (`restaurante_id`),
  CONSTRAINT `fk_horario` FOREIGN KEY (`restaurante_id`) REFERENCES `restaurante` (`id`)
)
ENGINE=InnoDB
AUTO_INCREMENT = 1;




-- -----------------------------------------------------
-- Table `mi-restaurante`.`comentario_rest`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`comentario_rest` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(255) DEFAULT NULL,
    `comentario` VARCHAR(255) DEFAULT NULL,
    `puntuacion` INT(2) DEFAULT NULL,
    `restaurante_id` BIGINT(20) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_comentario_rest` (`restaurante_id`),
    CONSTRAINT `fk_comentario_rest` FOREIGN KEY (`restaurante_id`) REFERENCES `restaurante` (`id`)
    )
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `mi-restaurante`.`plato_restaurante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`plato_restaurante` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(255) DEFAULT NULL,
    `precio_base` DECIMAL(13,2) DEFAULT NULL,
    `descripcion` VARCHAR(255) DEFAULT NULL,
    `restaurante_id` BIGINT(20) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_plato_restaurante` (`restaurante_id`),
    CONSTRAINT `fk_plato_restaurante` FOREIGN KEY (`restaurante_id`) REFERENCES `restaurante` (`id`)
    )
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `mi-restaurante`.`alergeno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`alergeno` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `alergeno` VARCHAR(255) DEFAULT NULL,
    `plato_id` BIGINT(20) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_alergeno` (`plato_id`),
    CONSTRAINT `fk_alergeno` FOREIGN KEY (`plato_id`) REFERENCES `plato_restaurante` (`id`)
    )
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `mi-restaurante`.`img_plato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`img_plato` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `imagen` VARCHAR(255) DEFAULT NULL,
    `plato_id` BIGINT(20) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_img_plato` (`plato_id`),
    CONSTRAINT `fk_img_plato` FOREIGN KEY (`plato_id`) REFERENCES `plato_restaurante` (`id`)
    )
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `mi-restaurante`.`extra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`extra` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(255) DEFAULT NULL,
    `coste` DECIMAL(13,2) DEFAULT NULL,
    `plato_id` BIGINT(20) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_extra` (`plato_id`),
    CONSTRAINT `fk_extra` FOREIGN KEY (`plato_id`) REFERENCES `plato_restaurante` (`id`)
    )
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `mi-restaurante`.`comentario_plato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`comentario_plato` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(255) DEFAULT NULL,
    `comentario` VARCHAR(255) DEFAULT NULL,
    `puntuacion` INT(2) DEFAULT NULL,
    `plato_id` BIGINT(20) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_comentario_plato` (`plato_id`),
    CONSTRAINT `fk_comentario_plato` FOREIGN KEY (`plato_id`) REFERENCES `plato_restaurante` (`id`)
    )
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `mi-restaurante`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`user` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(255) DEFAULT NULL,
    `password` VARCHAR(255) DEFAULT NULL,
    `token` VARCHAR(255) DEFAULT NULL,
    `date_create` DATETIME(6) DEFAULT NULL,
    `date_update` DATETIME(6) DEFAULT NULL,
    PRIMARY KEY (`id`)
    )
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `mi-restaurante`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`cliente` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(255) DEFAULT NULL,
    `apellidos` VARCHAR(255) DEFAULT NULL,
    `dni` VARCHAR(255) DEFAULT NULL,
    `telefono` INT(12) DEFAULT NULL,
    `email` VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
    )
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `mi-restaurante`.`direccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`direccion` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `tipo_via` VARCHAR(255) DEFAULT NULL,
    `calle` VARCHAR(255) DEFAULT NULL,
    `numero` INT(5) DEFAULT NULL,
    `ciudad` VARCHAR(255) DEFAULT NULL,
    `provincia` VARCHAR(255) DEFAULT NULL,
    `cp` INT(5) DEFAULT NULL,
    `pais` VARCHAR(255) DEFAULT NULL,
    `cliente_id` BIGINT(20) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_direccion` (`cliente_id`),
    CONSTRAINT `fk_direccion` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`)
    )
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `mi-restaurante`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`pedido` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `estado` VARCHAR(255) DEFAULT NULL,
    `coste_transporte` DECIMAL(13,2) DEFAULT NULL,
    `fecha` DATETIME(6) DEFAULT NULL,
    `cupon_descuento` VARCHAR(255) DEFAULT NULL,
    `precio_total` DECIMAL(13,2) DEFAULT NULL,
    `localizador` VARCHAR(255) DEFAULT NULL,
    `cliente_id` BIGINT(20) NOT NULL,
    `restaurante_id` BIGINT(20) NOT NULL,
    `direccion_id` BIGINT(20) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_cliente_pedido` (`cliente_id`),
    KEY `fk_restaurante_pedido` (`restaurante_id`),
    CONSTRAINT `fk_cliente_pedido` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`),
    CONSTRAINT `fk_restaurante_pedido` FOREIGN KEY (`restaurante_id`) REFERENCES `restaurante` (`id`)
    )
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `mi-restaurante`.`plato_pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`plato_pedido` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `cantidad` INT(2) DEFAULT NULL,
    `cliente_id` BIGINT(20) NOT NULL,
    `plato_id` BIGINT(20) NOT NULL,
    `pedido_id` BIGINT(20) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_plato_plato_pedido` (`plato_id`),
    KEY `fk_pedido_plato_pedido` (`pedido_id`),
    CONSTRAINT `fk_plato_plato_pedido` FOREIGN KEY (`plato_id`) REFERENCES `plato_restaurante` (`id`),
    CONSTRAINT `fk_pedido_plato_pedido` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`)
    )
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `mi-restaurante`.`extra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`extra_pedido` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(255) DEFAULT NULL,
    `coste` DECIMAL(13,2) DEFAULT NULL,
    `plato_pedido_id` BIGINT(20) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_extra_pedido` (`plato_pedido_id`),
    CONSTRAINT `fk_extra_pedido` FOREIGN KEY (`plato_pedido_id`) REFERENCES `plato_pedido` (`id`)
    )
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `mi-restaurante`.`plato_fav`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`plato_fav` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `cliente_id` BIGINT(20) NOT NULL,
    `plato_id` BIGINT(20) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_plato_plato_fav` (`plato_id`),
    KEY `fk_cliente_plato_fav` (`cliente_id`),
    CONSTRAINT `fk_plato_plato_fav` FOREIGN KEY (`plato_id`) REFERENCES `plato_restaurante` (`id`),
    CONSTRAINT `fk_cliente_plato_fav` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`)
    )
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `mi-restaurante`.`restaurante_fav`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mi-restaurante`.`restaurante_fav` (
    `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
    `cliente_id` BIGINT(20) NOT NULL,
    `restaurante_id` BIGINT(20) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_restaurante_restaurante_fav` (`restaurante_id`),
    KEY `fk_cliente_restaurante_fav` (`cliente_id`),
    CONSTRAINT `fk_restaurante_restaurante_fav` FOREIGN KEY (`restaurante_id`) REFERENCES `restaurante` (`id`),
    CONSTRAINT `fk_cliente_restaurante_fav` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`)
    )
    ENGINE=InnoDB
    AUTO_INCREMENT = 1;
