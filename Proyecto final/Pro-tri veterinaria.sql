DELIMITER //


CREATE PROCEDURE sp_insert_duenio(
    IN p_idDuenio INT,
    IN p_telefono VARCHAR(20),
    IN p_nombre VARCHAR(100)
)
BEGIN
    INSERT INTO Duenio (idDuenio, telefono, nombre)
    VALUES (p_idDuenio, p_telefono, p_nombre);
END;
//

CREATE PROCEDURE sp_update_duenio(
    IN p_idDuenio INT,
    IN p_telefono VARCHAR(20),
    IN p_nombre VARCHAR(100)
)
BEGIN
    UPDATE Duenio
    SET telefono = p_telefono,
        nombre = p_nombre
    WHERE idDuenio = p_idDuenio;
END;
//


CREATE PROCEDURE sp_delete_duenio(
    IN p_idDuenio INT
)
BEGIN
    DELETE FROM Duenio WHERE idDuenio = p_idDuenio;
END;
//

CREATE PROCEDURE sp_get_duenio(
    IN p_idDuenio INT
)
BEGIN
    SELECT * FROM Duenio WHERE idDuenio = p_idDuenio;
END;
//

CREATE TRIGGER trg_prevent_delete_duenio
BEFORE DELETE ON Duenio
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM Cita WHERE idDuenio = OLD.idDuenio) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se puede eliminar el dueño porque tiene citas asociadas.';
    END IF;
END;
//

CREATE PROCEDURE sp_insert_sucursal(
    IN p_idSucursal INT,
    IN p_nombre VARCHAR(100),
    IN p_ubicacion VARCHAR(255)
)
BEGIN
    INSERT INTO Sucursal (idSucursal, nombre, ubicacion)
    VALUES (p_idSucursal, p_nombre, p_ubicacion);
END;
//

CREATE PROCEDURE sp_update_sucursal(
    IN p_idSucursal INT,
    IN p_nombre VARCHAR(100),
    IN p_ubicacion VARCHAR(255)
)
BEGIN
    UPDATE Sucursal
    SET nombre = p_nombre,
        ubicacion = p_ubicacion
    WHERE idSucursal = p_idSucursal;
END;
//

CREATE PROCEDURE sp_delete_sucursal(
    IN p_idSucursal INT
)
BEGIN
    DELETE FROM Sucursal WHERE idSucursal = p_idSucursal;
END;
//

CREATE PROCEDURE sp_get_sucursal(
    IN p_idSucursal INT
)
BEGIN
    SELECT * FROM Sucursal WHERE idSucursal = p_idSucursal;
END;
//

CREATE TRIGGER trg_prevent_delete_sucursal
BEFORE DELETE ON Sucursal
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM Cosmetico WHERE idSucursal = OLD.idSucursal) OR
       EXISTS (SELECT 1 FROM Alimento WHERE idSucursal = OLD.idSucursal) OR
       EXISTS (SELECT 1 FROM Venta WHERE idSucursal = OLD.idSucursal) OR
       EXISTS (SELECT 1 FROM Cita WHERE idSucursal = OLD.idSucursal) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se puede eliminar la sucursal porque tiene referencias asociadas.';
    END IF;
END;
//


CREATE PROCEDURE sp_insert_veterinario(
    IN p_idVeterinario INT,
    IN p_nombre VARCHAR(100),
    IN p_telefono VARCHAR(20),
    IN p_especialidad VARCHAR(100)
)
BEGIN
    INSERT INTO Veterinario (idVeterinario, nombre, telefono, especialidad)
    VALUES (p_idVeterinario, p_nombre, p_telefono, p_especialidad);
END;
//

CREATE PROCEDURE sp_update_veterinario(
    IN p_idVeterinario INT,
    IN p_nombre VARCHAR(100),
    IN p_telefono VARCHAR(20),
    IN p_especialidad VARCHAR(100)
)
BEGIN
    UPDATE Veterinario
    SET nombre = p_nombre,
        telefono = p_telefono,
        especialidad = p_especialidad
    WHERE idVeterinario = p_idVeterinario;
END;
//

CREATE PROCEDURE sp_delete_veterinario(
    IN p_idVeterinario INT
)
BEGIN
    DELETE FROM Veterinario WHERE idVeterinario = p_idVeterinario;
END;
//

CREATE PROCEDURE sp_get_veterinario(
    IN p_idVeterinario INT
)
BEGIN
    SELECT * FROM Veterinario WHERE idVeterinario = p_idVeterinario;
END;
//

CREATE TRIGGER trg_prevent_delete_veterinario
BEFORE DELETE ON Veterinario
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM Mascota WHERE idVeterinario = OLD.idVeterinario) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se puede eliminar el veterinario porque tiene mascotas asignadas.';
    END IF;
END;
//


CREATE PROCEDURE sp_insert_cosmetico(
    IN p_idCosmetico INT,
    IN p_tipo_Cosmetico VARCHAR(100),
    IN p_precio DECIMAL(10,2),
    IN p_cantidad INT,
    IN p_idSucursal INT
)
BEGIN
    INSERT INTO Cosmetico (idCosmetico, tipo_Cosmetico, precio, cantidad, idSucursal)
    VALUES (p_idCosmetico, p_tipo_Cosmetico, p_precio, p_cantidad, p_idSucursal);
END;
//

CREATE PROCEDURE sp_update_cosmetico(
    IN p_idCosmetico INT,
    IN p_tipo_Cosmetico VARCHAR(100),
    IN p_precio DECIMAL(10,2),
    IN p_cantidad INT,
    IN p_idSucursal INT
)
BEGIN
    UPDATE Cosmetico
    SET tipo_Cosmetico = p_tipo_Cosmetico,
        precio = p_precio,
        cantidad = p_cantidad,
        idSucursal = p_idSucursal
    WHERE idCosmetico = p_idCosmetico;
END;
//

CREATE PROCEDURE sp_delete_cosmetico(
    IN p_idCosmetico INT
)
BEGIN
    DELETE FROM Cosmetico WHERE idCosmetico = p_idCosmetico;
END;
//

CREATE PROCEDURE sp_get_cosmetico(
    IN p_idCosmetico INT
)
BEGIN
    SELECT * FROM Cosmetico WHERE idCosmetico = p_idCosmetico;
END;
//



CREATE PROCEDURE sp_insert_alimento(
    IN p_idAlimento INT,
    IN p_nombre VARCHAR(100),
    IN p_precio DECIMAL(10,2),
    IN p_idSucursal INT
)
BEGIN
    INSERT INTO Alimento (idAlimento, nombre, precio, idSucursal)
    VALUES (p_idAlimento, p_nombre, p_precio, p_idSucursal);
END;
//

CREATE PROCEDURE sp_update_alimento(
    IN p_idAlimento INT,
    IN p_nombre VARCHAR(100),
    IN p_precio DECIMAL(10,2),
    IN p_idSucursal INT
)
BEGIN
    UPDATE Alimento
    SET nombre = p_nombre,
        precio = p_precio,
        idSucursal = p_idSucursal
    WHERE idAlimento = p_idAlimento;
END;
//

CREATE PROCEDURE sp_delete_alimento(
    IN p_idAlimento INT
)
BEGIN
    DELETE FROM Alimento WHERE idAlimento = p_idAlimento;
END;
//

CREATE PROCEDURE sp_get_alimento(
    IN p_idAlimento INT
)
BEGIN
    SELECT * FROM Alimento WHERE idAlimento = p_idAlimento;
END;
//


CREATE PROCEDURE sp_insert_consulta(
    IN p_idConsulta INT,
    IN p_estado VARCHAR(50),
    IN p_insumos VARCHAR(255),
    IN p_diagnostico VARCHAR(250)
)
BEGIN
    INSERT INTO Consulta (idConsulta, estado, insumos, diagnostico)
    VALUES (p_idConsulta, p_estado, p_insumos, p_diagnostico);
END;
//

CREATE PROCEDURE sp_update_consulta(
    IN p_idConsulta INT,
    IN p_estado VARCHAR(50),
    IN p_insumos VARCHAR(255),
    IN p_diagnostico VARCHAR(250)
)
BEGIN
    UPDATE Consulta
    SET estado = p_estado,
        insumos = p_insumos,
        diagnostico = p_diagnostico
    WHERE idConsulta = p_idConsulta;
END;
//

CREATE PROCEDURE sp_delete_consulta(
    IN p_idConsulta INT
)
BEGIN
    DELETE FROM Consulta WHERE idConsulta = p_idConsulta;
END;
//

CREATE PROCEDURE sp_get_consulta(
    IN p_idConsulta INT
)
BEGIN
    SELECT * FROM Consulta WHERE idConsulta = p_idConsulta;
END;
//


CREATE PROCEDURE sp_insert_venta(
    IN p_idVenta INT,
    IN p_total DECIMAL(10,2),
    IN p_metodoPago VARCHAR(50),
    IN p_fechaHora DATETIME,
    IN p_idSucursal INT
)
BEGIN
    INSERT INTO Venta (idVenta, total, metodoPago, fechaHora, idSucursal)
    VALUES (p_idVenta, p_total, p_metodoPago, p_fechaHora, p_idSucursal);
END;
//

CREATE PROCEDURE sp_update_venta(
    IN p_idVenta INT,
    IN p_total DECIMAL(10,2),
    IN p_metodoPago VARCHAR(50),
    IN p_fechaHora DATETIME,
    IN p_idSucursal INT
)
BEGIN
    UPDATE Venta
    SET total = p_total,
        metodoPago = p_metodoPago,
        fechaHora = p_fechaHora,
        idSucursal = p_idSucursal
    WHERE idVenta = p_idVenta;
END;
//

CREATE PROCEDURE sp_delete_venta(
    IN p_idVenta INT
)
BEGIN
    DELETE FROM Venta WHERE idVenta = p_idVenta;
END;
//

CREATE PROCEDURE sp_get_venta(
    IN p_idVenta INT
)
BEGIN
    SELECT * FROM Venta WHERE idVenta = p_idVenta;
END;
//


CREATE PROCEDURE sp_insert_mascota(
    IN p_idMascota INT,
    IN p_nombre VARCHAR(100),
    IN p_tipo_animal VARCHAR(100),
    IN p_fechaNacimiento DATE,
    IN p_sexo VARCHAR(20),
    IN p_idVeterinario INT
)
BEGIN
    INSERT INTO Mascota (idMascota, nombre, tipo_animal, fechaNacimiento, sexo, idVeterinario)
    VALUES (p_idMascota, p_nombre, p_tipo_animal, p_fechaNacimiento, p_sexo, p_idVeterinario);
END;
//

CREATE PROCEDURE sp_update_mascota(
    IN p_idMascota INT,
    IN p_nombre VARCHAR(100),
    IN p_tipo_animal VARCHAR(100),
    IN p_fechaNacimiento DATE,
    IN p_sexo VARCHAR(20),
    IN p_idVeterinario INT
)
BEGIN
    UPDATE Mascota
    SET nombre = p_nombre,
        tipo_animal = p_tipo_animal,
        fechaNacimiento = p_fechaNacimiento,
        sexo = p_sexo,
        idVeterinario = p_idVeterinario
    WHERE idMascota = p_idMascota;
END;
//

CREATE PROCEDURE sp_delete_mascota(
    IN p_idMascota INT
)
BEGIN
    DELETE FROM Mascota WHERE idMascota = p_idMascota;
END;
//

CREATE PROCEDURE sp_get_mascota(
    IN p_idMascota INT
)
BEGIN
    SELECT * FROM Mascota WHERE idMascota = p_idMascota;
END;
//

CREATE TRIGGER trg_prevent_delete_mascota
BEFORE DELETE ON Mascota
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM Tratamiento WHERE idMascota = OLD.idMascota) OR
       EXISTS (SELECT 1 FROM Servicio WHERE idMascota = OLD.idMascota) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se puede eliminar la mascota porque tiene tratamientos o servicios asociados.';
    END IF;
END;
//


CREATE PROCEDURE sp_insert_tratamiento(
    IN p_idTratamiento INT,
    IN p_medicamento VARCHAR(255),
    IN p_cuidados VARCHAR(255),
    IN p_idMascota INT
)
BEGIN
    INSERT INTO Tratamiento (idTratamiento, medicamento, cuidados, idMascota)
    VALUES (p_idTratamiento, p_medicamento, p_cuidados, p_idMascota);
END;
//

CREATE PROCEDURE sp_update_tratamiento(
    IN p_idTratamiento INT,
    IN p_medicamento VARCHAR(255),
    IN p_cuidados VARCHAR(255),
    IN p_idMascota INT
)
BEGIN
    UPDATE Tratamiento
    SET medicamento = p_medicamento,
        cuidados = p_cuidados,
        idMascota = p_idMascota
    WHERE idTratamiento = p_idTratamiento;
END;
//

CREATE PROCEDURE sp_delete_tratamiento(
    IN p_idTratamiento INT
)
BEGIN
    DELETE FROM Tratamiento WHERE idTratamiento = p_idTratamiento;
END;
//

CREATE PROCEDURE sp_get_tratamiento(
    IN p_idTratamiento INT
)
BEGIN
    SELECT * FROM Tratamiento WHERE idTratamiento = p_idTratamiento;
END;
//


CREATE PROCEDURE sp_insert_cita(
    IN p_idCita INT,
    IN p_fecha DATE,
    IN p_hora TIME,
    IN p_motivo VARCHAR(250),
    IN p_idDuenio INT,
    IN p_idSucursal INT,
    IN p_idConsulta INT
)
BEGIN
    INSERT INTO Cita (idCita, fecha, hora, motivo, idDuenio, idSucursal, idConsulta)
    VALUES (p_idCita, p_fecha, p_hora, p_motivo, p_idDuenio, p_idSucursal, p_idConsulta);
END;
//

CREATE PROCEDURE sp_update_cita(
    IN p_idCita INT,
    IN p_fecha DATE,
    IN p_hora TIME,
    IN p_motivo VARCHAR(250),
    IN p_idDuenio INT,
    IN p_idSucursal INT,
    IN p_idConsulta INT
)
BEGIN
    UPDATE Cita
    SET fecha = p_fecha,
        hora = p_hora,
        motivo = p_motivo,
        idDuenio = p_idDuenio,
        idSucursal = p_idSucursal,
        idConsulta = p_idConsulta
    WHERE idCita = p_idCita;
END;
//

CREATE PROCEDURE sp_delete_cita(
    IN p_idCita INT
)
BEGIN
    DELETE FROM Cita WHERE idCita = p_idCita;
END;
//

CREATE PROCEDURE sp_get_cita(
    IN p_idCita INT
)
BEGIN
    SELECT * FROM Cita WHERE idCita = p_idCita;
END;
//

CREATE PROCEDURE sp_insert_servicio(
    IN p_idServicio INT,
    IN p_tipo_Servicio VARCHAR(100),
    IN p_costo DECIMAL(10,2),
    IN p_descripcion VARCHAR(250),
    IN p_idConsulta INT,
    IN p_idMascota INT
)
BEGIN
    INSERT INTO Servicio (idServicio, tipo_Servicio, costo, descripcion, idConsulta, idMascota)
    VALUES (p_idServicio, p_tipo_Servicio, p_costo, p_descripcion, p_idConsulta, p_idMascota);
END;
//

CREATE PROCEDURE sp_update_servicio(
    IN p_idServicio INT,
    IN p_tipo_Servicio VARCHAR(100),
    IN p_costo DECIMAL(10,2),
    IN p_descripcion VARCHAR(250),
    IN p_idConsulta INT,
    IN p_idMascota INT
)
BEGIN
    UPDATE Servicio
    SET tipo_Servicio = p_tipo_Servicio,
        costo = p_costo,
        descripcion = p_descripcion,
        idConsulta = p_idConsulta,
        idMascota = p_idMascota
    WHERE idServicio = p_idServicio;
END;
//

CREATE PROCEDURE sp_delete_servicio(
    IN p_idServicio INT
)
BEGIN
    DELETE FROM Servicio WHERE idServicio = p_idServicio;
END;
//

CREATE PROCEDURE sp_get_servicio(
    IN p_idServicio INT
)
BEGIN
    SELECT * FROM Servicio WHERE idServicio = p_idServicio;
END;
//

DELIMITER ;