drop database if exists HORSE_HOUSE;
/*
CREATE DATABASE HORSE_HOUSE;

USE HORSE_HOUSE;

CREATE TABLE usuario (
  usuario_id INT PRIMARY KEY AUTO_INCREMENT,
  nombre_usuario VARCHAR(255),
  apellido_usuario VARCHAR(255),
  telefono_contacto INT,
  gmail_usuario VARCHAR(255),
  direccio_casa_usuario VARCHAR(255),
  contrasenia_usuario VARCHAR(255)
);

INSERT INTO usuario (nombre_usuario, apellido_usuario, telefono_contacto, gmail_usuario, direccio_casa_usuario, contrasenia_usuario) VALUES
('Juan Ignacio', 'Adorno', 1156937035, 'juanadorno@gmail.com', 'el nene 1367', 'Adorno2005'),
('Emanuel', 'Oliveira Da Silva', 1175230014, 'emanueloliveira@gmail.com', 'arregui 587', 'Oliveira2005'),
('Nahuel', 'Nicito', 1125339985, 'nahuelnicito@gmail.com', 'av. Lope de vega 2500', 'Nicito2005'),
('Mateo Sebastian', 'Milne Codignotto', 1167480826, 'mateomilne@gmail.com', 'gana 883', 'Milne2005');


CREATE TABLE cliente (
  cliente_id INT PRIMARY KEY AUTO_INCREMENT,
  nombre_cliente VARCHAR(255),
  apellido_cliente VARCHAR(255),
  telefono_contacto_cliente INT,
  gmail_cliente VARCHAR(255),
  direccio_casa_cliente VARCHAR(255),
  altura_casa_cliente INT
);


CREATE TABLE propiedades (
  id_propiedad INT PRIMARY KEY AUTO_INCREMENT,
  id_cliente INT,
  id_usuario INT,
  precio VARCHAR(255),
  tipo_propiedad VARCHAR(255),
  dimensiones VARCHAR(255),
  orientacion VARCHAR(255),
  materiales VARCHAR(255),
  antiguedad VARCHAR(255),
  barrio VARCHAR(255),
  FOREIGN KEY (id_cliente) REFERENCES cliente(cliente_id),
  FOREIGN KEY (id_usuario) REFERENCES usuario(usuario_id)
);

CREATE TABLE contrato (
  id_propiedad INT PRIMARY KEY AUTO_INCREMENT,
  id_cliente INT,
  id_usuario INT,
  precio VARCHAR(255),
  escritura VARCHAR(255),
  info_dominio VARCHAR(255),
  informe_inhibicion VARCHAR(255),
  constancia_de_pago_de_impuestos VARCHAR(255),
  certificado_iti VARCHAR(255),
  FOREIGN KEY (id_cliente) REFERENCES cliente(cliente_id),
  FOREIGN KEY (id_usuario) REFERENCES usuario(usuario_id)
);
