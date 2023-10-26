--------USUARIO----------
DELIMITER //

CREATE PROCEDURE AgregarUsuario(
    IN p_usuario_id INT,
    IN p_nombre_usuario VARCHAR(255),
    IN p_apellido_usuario VARCHAR(255),
    IN p_telefono_contacto INT,
    IN p_gmail_usuario VARCHAR(255),
    IN p_direccion_casa_usuario VARCHAR(255),
    IN p_altura_casa_usuario INT,
    IN p_contrasena_usuario VARCHAR(255)
)
BEGIN
    DECLARE user_count INT;

    SELECT COUNT(*) INTO user_count
    FROM usuario
    WHERE usuario_id = p_usuario_id;

    IF user_count = 0 THEN
        INSERT INTO usuario (
            usuario_id,
            nombre_usuario,
            apellido_usuario,
            telefono_contacto,
            gmail_usuario,
            direccio_casa_usuario,
            altura_casa_usuario,
            contrasenia_usuario
        ) VALUES (
            p_usuario_id,
            p_nombre_usuario,
            p_apellido_usuario,
            p_telefono_contacto,
            p_gmail_usuario,
            p_direccion_casa_usuario,
            p_altura_casa_usuario,
            p_contrasena_usuario
        );
        SELECT 'Usuario agregado correctamente.' AS mensaje;
    ELSE
        SELECT 'El usuario ya existe en la tabla.' AS mensaje;
    END IF;
END //

DELIMITER ;


call AgregarUsuario (usuario_id, nombre_usuario, apellido_usuario, telefono_contacto, gmail_usuario, direccio_casa_usuario, altura_casa_usuario, contrasenia_usuario)


--------CLIENTE----------
DELIMITER //

CREATE PROCEDURE AgregarCliente(
    IN p_cliente_id INT,
    IN p_nombre_cliente VARCHAR(255),
    IN p_apellido_cliente VARCHAR(255),
    IN p_telefono_contacto_cliente INT,
    IN p_gmail_cliente VARCHAR(255),
    IN p_direccion_casa_cliente VARCHAR(255),
    IN p_altura_casa_cliente INT
)
BEGIN
    DECLARE client_count INT;

    -- Verificar si el cliente ya existe
    SELECT COUNT(*) INTO client_count
    FROM cliente
    WHERE cliente_id = p_cliente_id;

    -- Si el cliente no existe, agregarlo
    IF client_count = 0 THEN
        INSERT INTO cliente (
            cliente_id,
            nombre_cliente,
            apellido_cliente,
            telefono_contacto_cliente,
            gmail_cliente,
            direccio_casa_cliente,
            altura_casa_cliente
        ) VALUES (
            p_cliente_id,
            p_nombre_cliente,
            p_apellido_cliente,
            p_telefono_contacto_cliente,
            p_gmail_cliente,
            p_direccion_casa_cliente,
            p_altura_casa_cliente
        );
        SELECT 'Cliente agregado correctamente.' AS mensaje;
    ELSE
        SELECT 'El cliente ya existe en la tabla.' AS mensaje;
    END IF;
END //

DELIMITER ;

CALL AgregarCliente (cliente_id, cliente_usuario, apellido_cliente, telefono_contacto_cliente, gmail_cliente, direccio_casa_cliente, altura_casa_cliente);
