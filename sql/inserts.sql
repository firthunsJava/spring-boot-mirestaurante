
-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------
INSERT INTO categoria(categoria) VALUES ('Mexicana');
INSERT INTO categoria(categoria) VALUES ('Americana');
INSERT INTO categoria(categoria) VALUES ('Italiana');


INSERT INTO restaurante (nombre, img_logo, descripcion, rango_max_reparto, destacado, localizacion, activo,  date_created, categoria_id)
VALUES ('Taco Bell', 'https://turbologo.com/articles/wp-content/uploads/2020/02/Taco-Bell-logo.png', 'Comida mejicana y sabrosa',
        1234,true, 'Calle Manuel Candela', true, NOW(), 1);

INSERT INTO restaurante (nombre, img_logo, descripcion, rango_max_reparto, destacado, localizacion, activo,  date_created, categoria_id)
VALUES ('Burger King', 'https://logos-marcas.com/wp-content/uploads/2020/08/Burger-King-Logo.png', 'Comida americana a  la barbacoa',
        1234,true, 'Calle Manuel Candela', true, NOW(), 2);

INSERT INTO restaurante (nombre, img_logo, descripcion, rango_max_reparto, destacado, localizacion, activo,  date_created, categoria_id)
VALUES ('Dominos', 'https://urbancomunicacion.com/wp-content/uploads/2018/05/Curiosa-historia-del-logo-de-Dominos-Pizza.png', 'Comida italiana al mejor precio',
        1234,true, 'Calle Manuel Candela', true, NOW(), 3);




INSERT INTO img_restaurante(imagen, restaurante_id) VALUES ('https://turbologo.com/articles/wp-content/uploads/2020/02/Taco-Bell-logo.png',1);
INSERT INTO img_restaurante(imagen, restaurante_id) VALUES ('https://turbologo.com/articles/wp-content/uploads/2020/02/Taco-Bell-logo.png',1);
INSERT INTO img_restaurante(imagen, restaurante_id) VALUES ('https://turbologo.com/articles/wp-content/uploads/2020/02/Taco-Bell-logo.png',1);

INSERT INTO img_restaurante(imagen, restaurante_id) VALUES ('https://logos-marcas.com/wp-content/uploads/2020/08/Burger-King-Logo.png',2);
INSERT INTO img_restaurante(imagen, restaurante_id) VALUES ('https://logos-marcas.com/wp-content/uploads/2020/08/Burger-King-Logo.png',2);
INSERT INTO img_restaurante(imagen, restaurante_id) VALUES ('https://logos-marcas.com/wp-content/uploads/2020/08/Burger-King-Logo.png',2);

INSERT INTO img_restaurante(imagen, restaurante_id) VALUES ('https://urbancomunicacion.com/wp-content/uploads/2018/05/Curiosa-historia-del-logo-de-Dominos-Pizza.png',3);
INSERT INTO img_restaurante(imagen, restaurante_id) VALUES ('https://urbancomunicacion.com/wp-content/uploads/2018/05/Curiosa-historia-del-logo-de-Dominos-Pizza.png',3);
INSERT INTO img_restaurante(imagen, restaurante_id) VALUES ('https://urbancomunicacion.com/wp-content/uploads/2018/05/Curiosa-historia-del-logo-de-Dominos-Pizza.png',3);

INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('10:00', '17:00',0,1);
INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('10:00', '17:00',1,1);
INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('10:00', '17:00',2,1);
INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('10:00', '17:00',3,1);
INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('10:00', '17:00',4,1);
INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('10:00', '17:00',5,1);
INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('10:00', '17:00',6,1);

INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('10:00', '22:00',0,2);
INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('10:00', '22:00',1,2);
INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('10:00', '22:00',2,2);
INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('10:00', '22:00',3,2);
INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('10:00', '22:00',4,2);
INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('10:00', '22:00',5,2);
INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('10:00', '22:00',6,2);

INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('11:00', '17:00',0,3);
INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('11:00', '17:00',1,3);
INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('11:00', '17:00',2,3);
INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('11:00', '17:00',3,3);
INSERT INTO horario(apertura, cierre, dia, restaurante_id) VALUES ('11:00', '17:00',4,3);


INSERT INTO comentario_rest(email, comentario, puntuacion, restaurante_id) VALUES ('taco@tacobell.com', 'Los mejores tacos del mundo', 10,1);
INSERT INTO comentario_rest(email, comentario, puntuacion, restaurante_id) VALUES ('taco@tacobell.com', 'Que buenoooo', 9,1);

INSERT INTO comentario_rest(email, comentario, puntuacion, restaurante_id) VALUES ('burger@burgerking.com', 'Las mejores hamburguesas del mundo', 10,2);
INSERT INTO comentario_rest(email, comentario, puntuacion, restaurante_id) VALUES ('burger@burgerking.com', 'Que buenaaaaa', 10,2);

INSERT INTO comentario_rest(email, comentario, puntuacion, restaurante_id) VALUES ('dominos@dominos.com', 'Las mejores pizzas del planeta', 10,1);
INSERT INTO comentario_rest(email, comentario, puntuacion, restaurante_id) VALUES ('dominos@dominos.com', 'Mamma mia', 8,1);

INSERT INTO plato_restaurante(nombre, precio_base, descripcion, restaurante_id) VALUES ('Taco Estrella', 2.99,'El taco más maravilloso', 1);
INSERT INTO plato_restaurante(nombre, precio_base, descripcion, restaurante_id) VALUES ('Taco Máster', 2.79,'El taco más explosivo', 1);
INSERT INTO plato_restaurante(nombre, precio_base, descripcion, restaurante_id) VALUES ('Enchilada', 3.99,'Enchilada única', 1);

INSERT INTO plato_restaurante(nombre, precio_base, descripcion, restaurante_id) VALUES ('Big King', 1.99,'Hamburguesa única', 2);
INSERT INTO plato_restaurante(nombre, precio_base, descripcion, restaurante_id) VALUES ('Whopper', 2.49,'Para los amantes', 2);
INSERT INTO plato_restaurante(nombre, precio_base, descripcion, restaurante_id) VALUES ('Doble Texas', 2.79,'Sabor americano', 2);

INSERT INTO plato_restaurante(nombre, precio_base, descripcion, restaurante_id) VALUES ('Cremosa', 7.99,'Pizza suave', 3);
INSERT INTO plato_restaurante(nombre, precio_base, descripcion, restaurante_id) VALUES ('Barbacoa', 7.49,'Pizza suave', 3);
INSERT INTO plato_restaurante(nombre, precio_base, descripcion, restaurante_id) VALUES ('Hawaiana', 6.99,'Pizza suave', 3);


INSERT INTO alergeno(alergeno, plato_id) VALUES ('Pepinillo',1);
INSERT INTO alergeno(alergeno, plato_id) VALUES ('Pepinillo',5);
INSERT INTO alergeno(alergeno, plato_id) VALUES ('Gluten',1);
INSERT INTO alergeno(alergeno, plato_id) VALUES ('Cacahuete',2);
INSERT INTO alergeno(alergeno, plato_id) VALUES ('Lacteos',7);
INSERT INTO alergeno(alergeno, plato_id) VALUES ('Lacteos',8);
INSERT INTO alergeno(alergeno, plato_id) VALUES ('Pimiento',8);
INSERT INTO alergeno(alergeno, plato_id) VALUES ('Lacteos',9);

INSERT INTO img_plato(imagen, plato_id) VALUES ('https://tacobell.es/wp-content/uploads/2017/05/05_BODEGON_WEB_560X410_TACOS_X6_09FEB.jpg',1);
INSERT INTO img_plato(imagen, plato_id) VALUES ('https://tacobell.es/wp-content/uploads/2017/05/05_BODEGON_WEB_560X410_TACOS_X6_09FEB.jpg',1);
INSERT INTO img_plato(imagen, plato_id) VALUES ('https://tacobell.es/wp-content/uploads/2017/05/05_BODEGON_WEB_560X410_TACOS_X6_09FEB.jpg',2);
INSERT INTO img_plato(imagen, plato_id) VALUES ('https://tacobell.es/wp-content/uploads/2017/05/05_BODEGON_WEB_560X410_TACOS_X6_09FEB.jpg',2);
INSERT INTO img_plato(imagen, plato_id) VALUES ('https://tacobell.es/wp-content/uploads/2017/05/05_BODEGON_WEB_560X410_TACOS_X6_09FEB.jpg',3);
INSERT INTO img_plato(imagen, plato_id) VALUES ('https://tacobell.es/wp-content/uploads/2017/05/05_BODEGON_WEB_560X410_TACOS_X6_09FEB.jpg',3);
INSERT INTO img_plato(imagen, plato_id) VALUES ('https://s3.eu-central-1.amazonaws.com/www.burgerking.com.mx/wp-content/uploads/sites/3/2021/02/24092120/1200x800_14_BigKing-1-1.png',4);
INSERT INTO img_plato(imagen, plato_id) VALUES ('https://s3.eu-central-1.amazonaws.com/www.burgerking.com.mx/wp-content/uploads/sites/3/2021/02/24092120/1200x800_14_BigKing-1-1.png',4);
INSERT INTO img_plato(imagen, plato_id) VALUES ('https://s3.eu-central-1.amazonaws.com/www.burgerking.com.mx/wp-content/uploads/sites/3/2021/02/24092120/1200x800_14_BigKing-1-1.png',5);
INSERT INTO img_plato(imagen, plato_id) VALUES ('https://s3.eu-central-1.amazonaws.com/www.burgerking.com.mx/wp-content/uploads/sites/3/2021/02/24092120/1200x800_14_BigKing-1-1.png',5);
INSERT INTO img_plato(imagen, plato_id) VALUES ('https://s3.eu-central-1.amazonaws.com/www.burgerking.com.mx/wp-content/uploads/sites/3/2021/02/24092120/1200x800_14_BigKing-1-1.png',6);
INSERT INTO img_plato(imagen, plato_id) VALUES ('https://s3.eu-central-1.amazonaws.com/www.burgerking.com.mx/wp-content/uploads/sites/3/2021/02/24092120/1200x800_14_BigKing-1-1.png',6);

INSERT INTO extra(nombre, coste, plato_id) VALUES ('Bacon', 0.5,1);
INSERT INTO extra(nombre, coste, plato_id) VALUES ('Queso', 0.5,1);
INSERT INTO extra(nombre, coste, plato_id) VALUES ('Bacon', 0.5,2);
INSERT INTO extra(nombre, coste, plato_id) VALUES ('Queso', 0.5,2);
INSERT INTO extra(nombre, coste, plato_id) VALUES ('Bacon', 0.5,3);
INSERT INTO extra(nombre, coste, plato_id) VALUES ('Queso', 0.5,3);
INSERT INTO extra(nombre, coste, plato_id) VALUES ('Bacon', 0.5,4);
INSERT INTO extra(nombre, coste, plato_id) VALUES ('Queso', 0.5,4);
INSERT INTO extra(nombre, coste, plato_id) VALUES ('Bacon', 0.5,5);
INSERT INTO extra(nombre, coste, plato_id) VALUES ('Queso', 0.5,5);
INSERT INTO extra(nombre, coste, plato_id) VALUES ('Bacon', 0.5,6);
INSERT INTO extra(nombre, coste, plato_id) VALUES ('Queso', 0.5,6);
INSERT INTO extra(nombre, coste, plato_id) VALUES ('Bacon', 0.5,7);
INSERT INTO extra(nombre, coste, plato_id) VALUES ('Queso', 0.5,7);
INSERT INTO extra(nombre, coste, plato_id) VALUES ('Bacon', 0.5,8);
INSERT INTO extra(nombre, coste, plato_id) VALUES ('Queso', 0.5,8);
INSERT INTO extra(nombre, coste, plato_id) VALUES ('Bacon', 0.5,9);
INSERT INTO extra(nombre, coste, plato_id) VALUES ('Queso', 0.5,9);

INSERT INTO comentario_plato(email, comentario, puntuacion, plato_id) VALUES ('taco@tacobell.com', 'Buenísimo', 10,1);
INSERT INTO comentario_plato(email, comentario, puntuacion, plato_id) VALUES ('taco@tacobell.com', 'Espectacular', 9,1);
INSERT INTO comentario_plato(email, comentario, puntuacion, plato_id) VALUES ('taco@tacobell.com', 'Estupendo', 10,2);



