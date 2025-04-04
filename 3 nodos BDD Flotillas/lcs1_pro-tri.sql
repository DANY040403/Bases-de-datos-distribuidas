-- ////INSERT
DELIMITER $$
create procedure registroVehiculo(
	in vehid int,
    in floid int,
    in tip varchar(80),
    in model varchar(80),
    in mar varchar(80),
    in ani int,
    in est varchar(80),
    in feve date
)
begin
	insert into vehiculo(vehiculoid,flotillaid,tipo,modelo,marca,anio,estado,fechaVerificacion)
    values (vehid,floid,tip,model,mar,ani,est,feve);
end $$
DELIMITER ;

DELIMITER $$
create trigger insertLCS2 after insert on lcs1_principal.vehiculo for each row 
begin
	insert into lcs2_mantenimiento.vehiculo(vehiculoid,flotillaid,tipo,modelo,marca,anio,estado,fechaVerificacion)
	values(new.vehiculoid,new.flotillaid,new.tipo,new.modelo,new.marca,new.anio,new.estado,new.fechaVerificacion);
end $$
DELIMITER ;

DELIMITER $$
create trigger insertLCS3 after insert on lcs1_principal.vehiculo for each row 
begin
	insert into lcs3_rutas.vehiculo(vehiculoid,flotillaid,tipo,modelo,marca,anio,estado,fechaVerificacion)
	values(new.vehiculoid,new.flotillaid,new.tipo,new.modelo,new.marca,new.anio,new.estado,new.fechaVerificacion);
end $$
DELIMITER ;


-- /////UPDATE
DELIMITER $$
CREATE PROCEDURE actualizarFechaVeri(
    IN vehid INT,
    IN feve date
)
BEGIN
    UPDATE lcs1_principal.vehiculo
    SET 
        fechaVerificacion = feve
    WHERE vehiculoid = vehid;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER updateLCS2 
AFTER UPDATE ON lcs1_principal.vehiculo
FOR EACH ROW
BEGIN
    UPDATE lcs2_mantenimiento.vehiculo
    SET 
        fechaVerificacion = NEW.fechaVerificacion
    WHERE vehiculoid = NEW.vehiculoid;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER updateLCS3 
AFTER UPDATE ON lcs1_principal.vehiculo
FOR EACH ROW
BEGIN
    UPDATE lcs3_rutas.vehiculo
    SET 
        fechaVerificacion = NEW.fechaVerificacion
    WHERE vehiculoid = NEW.vehiculoid;
END $$
DELIMITER ;


-- /////DELETE
DELIMITER $$
CREATE PROCEDURE eliminarVehiculo(
    IN vehid INT
)
BEGIN
    DELETE FROM lcs1_principal.vehiculo WHERE vehiculoid = vehid;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER deleteLCS2 
AFTER DELETE ON lcs1_principal.vehiculo
FOR EACH ROW
BEGIN
    DELETE FROM lcs2_mantenimiento.vehiculo WHERE vehiculoid = OLD.vehiculoid;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER deleteLCS3 
AFTER DELETE ON lcs1_principal.vehiculo
FOR EACH ROW
BEGIN
    DELETE FROM lcs3_rutas.vehiculo WHERE vehiculoid = OLD.vehiculoid;
END $$
DELIMITER ;