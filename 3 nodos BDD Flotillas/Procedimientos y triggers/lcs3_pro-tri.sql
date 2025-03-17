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
create trigger insertLCS1 after insert on lcs3_rutas.vehiculo for each row 
begin
	insert into lcs1_principal.vehiculo(vehiculoid,flotillaid,tipo,modelo,marca,anio,estado,fechaVerificacion)
	values(new.vehiculoid,new.flotillaid,new.tipo,new.modelo,new.marca,new.anio,new.estado,new.fechaVerificacion);
end $$
DELIMITER ;

DELIMITER $$
create trigger insertLCS2 after insert on lcs3_rutas.vehiculo for each row 
begin
	insert into lcs2_mantenimiento.vehiculo(vehiculoid,flotillaid,tipo,modelo,marca,anio,estado,fechaVerificacion)
	values(new.vehiculoid,new.flotillaid,new.tipo,new.modelo,new.marca,new.anio,new.estado,new.fechaVerificacion);
end $$
DELIMITER ;


-- /////UPDATE
DELIMITER $$
CREATE PROCEDURE actualizarEstado(
    IN vehid INT,
    IN est VARCHAR(80)
)
BEGIN
    UPDATE lcs3_rutas.vehiculo
    SET 
        estado = est
    WHERE vehiculoid = vehid;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER updateLCS1 
AFTER UPDATE ON lcs3_rutas.vehiculo
FOR EACH ROW
BEGIN
    UPDATE lcs1_principal.vehiculo
    SET 
        estado = NEW.estado
    WHERE vehiculoid = NEW.vehiculoid;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER updateLCS2 
AFTER UPDATE ON lcs3_rutas.vehiculo
FOR EACH ROW
BEGIN
    UPDATE lcs2_mantenimiento.vehiculo
    SET 
        estado = NEW.estado
    WHERE vehiculoid = NEW.vehiculoid;
END $$
DELIMITER ;


-- /////DELETE
DELIMITER $$
CREATE PROCEDURE eliminarVehiculo(
    IN vehid INT
)
BEGIN
    DELETE FROM lcs3_rutas.vehiculo WHERE vehiculoid = vehid;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER deleteLCS1 
AFTER DELETE ON lcs3_rutas.vehiculo
FOR EACH ROW
BEGIN
    DELETE FROM lcs1_principal.vehiculo WHERE vehiculoid = OLD.vehiculoid;
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER deleteLCS2
AFTER DELETE ON lcs3_rutas.vehiculo
FOR EACH ROW
BEGIN
    DELETE FROM lcs2_mantenimiento.vehiculo WHERE vehiculoid = OLD.vehiculoid;
END $$
DELIMITER ;

