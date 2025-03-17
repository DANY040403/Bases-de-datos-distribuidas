select A.flotillaId ,A.nombreEmpresa, B.tipo, B.modelo from lcs1_principal.flotilla A INNER JOIN lcs2_mantenimiento.vehiculo B ON 
A.flotillaId = B.flotillaId order by flotillaId asc;

select A.conductorId, A.nombre, B.estado,B.UbicacionFin,C.modelo from lcs3_rutas.ruta B inner join lcs1_principal.vehiculo C on
B.vehiculoId = C.vehiculoId inner join lcs3_rutas.conductor A on A.conductorId = B.conductorId order by conductorId;

