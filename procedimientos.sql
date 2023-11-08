--------USUARIO----------
DELIMITER //

CREATE PROCEDURE ADDUSER(
    IN p_nombre_usuario VARCHAR(255),
    IN p_apellido_usuario VARCHAR(255),
    IN p_telefono_contacto INT,
    IN p_gmail_usuario VARCHAR(255),
    IN p_direccion_casa_usuario VARCHAR(255),
    IN p_contrasena_usuario VARCHAR(255)
)
BEGIN
    -- Inserting user details into the 'usuario' table
    INSERT INTO usuario (
        nombre_usuario,
        apellido_usuario,
        telefono_contacto,
        gmail_usuario,
        direccio_casa_usuario,
        contrasenia_usuario
    ) VALUES (
        p_nombre_usuario,
        p_apellido_usuario,
        p_telefono_contacto,
        p_gmail_usuario,
        p_direccion_casa_usuario,
        p_contrasena_usuario
    );

END //

DELIMITER ;


--------CLIENTE----------

DELIMITER //

CREATE PROCEDURE ADDCLIENT(
    IN p_nombre_cliente VARCHAR(255),
    IN p_apellido_cliente VARCHAR(255),
    IN p_telefono_contacto_cliente INT,
    IN p_gmail_cliente VARCHAR(255),
    IN p_direccion_casa_cliente VARCHAR(255)
)
BEGIN
        INSERT INTO cliente (
            nombre_cliente,
            apellido_cliente,
            telefono_contacto_cliente,
            gmail_cliente,
            direccio_casa_cliente
        ) VALUES (
            p_nombre_cliente,
            p_apellido_cliente,
            p_telefono_contacto_cliente,
            p_gmail_cliente,
            p_direccion_casa_cliente);
END //

DELIMITER ;


--ACTUALIZA LOS USUARIOS--
DELIMITER //
CREATE PROCEDURE GETUSUARIOS()
BEGIN
SELECT * FROM USUARIO;
END //
DELIMITER ;

--ACTUALIZA CLIENTE----------
DELIMITER //
CREATE PROCEDURE GETCLIENTE()
BEGIN
SELECT * FROM CLIENTE;
END //
DELIMITER ;

--ACTUALIZA PROPIEDADES--
DELIMITER //
CREATE PROCEDURE GETPROPIEDADES()
BEGIN
SELECT * FROM PROPIEDADES;
END //
DELIMITER ;

--ACTUALIZA CONTRATOS--
DELIMITER //
CREATE PROCEDURE GETCONTRATOS()
BEGIN
SELECT * FROM CONTRATO;
END //
DELIMITER ;


--SELECT CONTRATO--
DELIMITER //
CREATE PROCEDURE VERIF_CONTRA()
BEGIN
SELECT ALIAS
FROM CONTRATOS
INNER JOIN USUARIOS ON USUARIO_ID = ID_USUARIO;
END//

DELIMITER ;


--INTEGRAR USUARIO--
DELIMITER //
CREATE PROCEDURE INTUSER(IN USUA VARCHAR(255), IN CONTRA VARCHAR(255))
BEGIN
    IF NOT EXISTS (SELECT * FROM USUARIO WHERE GMAIL_USUARIO = USUA) THEN
        INSERT INTO usuario (nombre_usuario, gmail_usuario, contrasenia_usuario) VALUES (USUA, USUA, CONTRA);
    END IF;
END//
DELIMITER ;
