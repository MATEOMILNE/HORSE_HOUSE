drop database if exists h_h;
//***/ edit /*


CREATE DATABASE h_h;

USE h_h;

CREATE TABLE usuario (
  usuario_id INT PRIMARY KEY AUTO_INCREMENT,
  nombre_usuario VARCHAR(255),
  apellido_usuario VARCHAR(255),
  telefono_contacto INT,
  gmail_usuario VARCHAR(255),
  direccio_casa_usuario VARCHAR(255),
  contrasenia_usuario VARCHAR(255),
  puesto VARCHAR(255)
);


CREATE TABLE cliente (
  cliente_id INT PRIMARY KEY AUTO_INCREMENT,
  nombre_cliente VARCHAR(255),
  apellido_cliente VARCHAR(255),
  telefono_contacto_cliente INT,
  gmail_cliente VARCHAR(255),
  direccio_casa_cliente VARCHAR(255)
);


CREATE TABLE propiedades (
  id_propiedad INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(255) NOT NULL DEFAULT '(Sin Nombre)',
  vendida BOOLEAN NOT NULL DEFAULT FALSE,
  precio INT,
  dimensiones VARCHAR(255),
  materiales VARCHAR(255),
  barrio VARCHAR(255),
  url VARCHAR(255) NOT NULL DEFAULT 'src/resources/default.png'
);
ALTER TABLE `propiedades` ADD `descripcion` TEXT NOT NULL DEFAULT '(Sin Descripcion)' AFTER `barrio`;

CREATE TABLE contrato (
  id_contrato INT PRIMARY KEY AUTO_INCREMENT,
  Alias VARCHAR (255),
  id_cliente INT,
  id_usuario INT,
  estado BOOLEAN NOT NULL DEFAULT TRUE,
  precio VARCHAR(255),
  escritura VARCHAR(255),
  FOREIGN KEY (id_cliente) REFERENCES cliente(cliente_id),
  FOREIGN KEY (id_usuario) REFERENCES usuario(usuario_id)
);
ALTER TABLE contrato ADD Condiciones TEXT NOT NULL DEFAULT '(Sin Condiciones)' AFTER escritura;
