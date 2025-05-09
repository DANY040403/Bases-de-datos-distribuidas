use veterinaria;
INSERT INTO Duenio (idDuenio, telefono, nombre) VALUES
(1, '555-1234', 'Juan Pérez'),
(2, '555-5678', 'María López'),
(3, '555-8765', 'Carlos García'),
(4, '555-4321', 'Ana Martínez'),
(5, '555-1111', 'Luis Fernández'),
(6, '555-2222', 'Sofía Rodríguez'),
(7, '555-3333', 'Pedro Sánchez'),
(8, '555-4444', 'Laura Gómez'),
(9, '555-5555', 'Jorge Díaz'),
(10, '555-6666', 'Claudia Torres');

INSERT INTO Sucursal (idSucursal, nombre, ubicacion) VALUES
(1, 'Sucursal Centro', 'Calle 1, Ciudad A'),
(2, 'Sucursal Norte', 'Calle 2, Ciudad B'),
(3, 'Sucursal Sur', 'Calle 3, Ciudad C'),
(4, 'Sucursal Este', 'Calle 4, Ciudad D'),
(5, 'Sucursal Oeste', 'Calle 5, Ciudad E'),
(6, 'Sucursal Plaza', 'Calle 6, Ciudad F'),
(7, 'Sucursal Parque', 'Calle 7, Ciudad G'),
(8, 'Sucursal Río', 'Calle 8, Ciudad H'),
(9, 'Sucursal Mar', 'Calle 9, Ciudad I'),
(10, 'Sucursal Bosque', 'Calle 10, Ciudad J');

INSERT INTO Veterinario (idVeterinario, nombre, telefono, especialidad) VALUES
(1, 'Dr. Alberto Ruiz', '555-7777', 'Cirugía'),
(2, 'Dra. Patricia Silva', '555-8888', 'Dermatología'),
(3, 'Dr. Javier Morales', '555-9999', 'Odontología'),
(4, 'Dra. Elena Castro', '555-0000', 'Medicina Interna'),
(5, 'Dr. Luis Herrera', '555-1234', 'Cardiología'),
(6, 'Dra. Ana Beltrán', '555-5678', 'Oftalmología'),
(7, 'Dr. Carlos Mendoza', '555-8765', 'Neurología'),
(8, 'Dra. Sofía Ríos', '555-4321', 'Oncología'),
(9, 'Dr. Pedro Jiménez', '555-1111', 'Geriatría'),
(10, 'Dra. Laura Paredes', '555-2222', 'Pediatría');

INSERT INTO Cosmetico (idCosmetico, tipo_Cosmetico, precio, cantidad, idSucursal) VALUES
(1, 'Shampoo', 15.99, 100, 1),
(2, 'Acondicionador', 12.99, 80, 1),
(3, 'Perfume', 25.50, 50, 2),
(4, 'Crema hidratante', 20.00, 60, 2),
(5, 'Spray antipulgas', 18.75, 40, 3),
(6, 'Jabón', 5.50, 200, 3),
(7, 'Loción para piel', 22.00, 30, 4),
(8, 'Champú seco', 10.00, 70, 4),
(9, 'Aceite para mascotas', 30.00, 20, 5),
(10, 'Toallitas húmedas', 8.50, 150, 5);

INSERT INTO Alimento (idAlimento, nombre, precio, idSucursal) VALUES
(1, 'Croquetas para perros', 30.00, 1),
(2, 'Croquetas para gatos', 28.00, 1),
(3, 'Comida húmeda para perros', 35.00, 2),
(4, 'Comida húmeda para gatos', 32.00, 2),
(5, 'Snacks para perros', 10.00, 3),
(6, 'Snacks para gatos', 9.00, 3),
(7, 'Alimento para pájaros', 15.00, 4),
(8, 'Alimento para peces', 12.00, 4),
(9, 'Comida para conejos', 18.00, 5),
(10, 'Alimento para hámsters', 20.00, 5);

INSERT INTO Consulta (idConsulta, estado, insumos, diagnostico) VALUES
(1, 'Pendiente', 'Jeringas, Guantes', 'Infección leve de piel'),
(2, 'Finalizada', 'Antibióticos', 'Otitis en oreja derecha'),
(3, 'En proceso', 'Analgésicos', 'Fractura de pata posterior'),
(4, 'Pendiente', 'Vacunas, Termómetro', 'Vacunación anual'),
(5, 'Finalizada', 'Suero, Antieméticos', 'Deshidratación'),
(6, 'En proceso', 'Antiparasitarios', 'Gastroenteritis'),
(7, 'Pendiente', 'Antibióticos', 'Infección dental'),
(8, 'Finalizada', 'Anestesia, Gasas', 'Castración'),
(9, 'En proceso', 'Antiinflamatorios', 'Artritis'),
(10, 'Pendiente', 'Vitaminas', 'Chequeo general');

INSERT INTO Venta (idVenta, total, metodoPago, fechaHora, idSucursal) VALUES
(1, 150.00, 'Tarjeta', '2024-01-10 14:30:00', 1),
(2, 220.50, 'Efectivo', '2024-01-11 10:00:00', 1),
(3, 75.00, 'Tarjeta', '2024-01-12 16:45:00', 2),
(4, 180.25, 'Transferencia', '2024-01-13 12:15:00', 2),
(5, 95.00, 'Efectivo', '2024-01-14 09:50:00', 3),
(6, 110.00, 'Tarjeta', '2024-01-15 14:00:00', 3),
(7, 130.40, 'Efectivo', '2024-01-16 11:30:00', 4),
(8, 210.75, 'Tarjeta', '2024-01-17 15:20:00', 4),
(9, 140.00, 'Transferencia', '2024-01-18 13:40:00', 5),
(10, 155.60, 'Efectivo', '2024-01-19 10:10:00', 5);

INSERT INTO Mascota (idMascota, nombre, tipo_animal, fechaNacimiento, sexo, idVeterinario) VALUES
(1, 'Firulais', 'Perro', '2018-05-10', 'Macho', 1),
(2, 'Misu', 'Gato', '2020-09-21', 'Hembra', 2),
(3, 'Rex', 'Perro', '2017-04-15', 'Macho', 3),
(4, 'Luna', 'Gato', '2019-11-30', 'Hembra', 4),
(5, 'Bobby', 'Perro', '2016-07-07', 'Macho', 5),
(6, 'Coco', 'Pájaro', '2021-02-14', 'Hembra', 6),
(7, 'Nina', 'Conejo', '2019-06-06', 'Hembra', 7),
(8, 'Toby', 'Perro', '2015-12-01', 'Macho', 8),
(9, 'Simba', 'Gato', '2018-03-22', 'Macho', 9),
(10, 'Lola', 'Hámster', '2020-08-18', 'Hembra', 10);

INSERT INTO Tratamiento (idTratamiento, medicamento, cuidados, idMascota) VALUES
(1, 'Antibiótico A', 'Aplicar 2 veces al día', 1),
(2, 'Anti-inflamatorio B', 'No exponer al sol', 2),
(3, 'Desparasitante C', 'Dosis única oral', 3),
(4, 'Antifúngico D', 'Evitar baños por 7 días', 4),
(5, 'Vacuna E', 'Reposo 24 horas', 5),
(6, 'Suplemento F', 'Administrar con comida', 6),
(7, 'Analgesico G', 'No saltar', 7),
(8, 'Antibiótico H', 'Completar 7 días', 8),
(9, 'Antipulgas I', 'Aplicar cada mes', 9),
(10, 'Vitaminas J', 'Diario durante 2 semanas', 10);

INSERT INTO Cita (idCita, fecha, hora, motivo, idDuenio, idSucursal, idConsulta) VALUES
(1, '2024-02-01', '10:00:00', 'Chequeo anual', 1, 1, 1),
(2, '2024-02-02', '11:30:00', 'Vacunación', 2, 1, 2),
(3, '2024-02-03', '09:00:00', 'Control herida', 3, 2, 3),
(4, '2024-02-04', '14:00:00', 'Consulta general', 4, 2, 4),
(5, '2024-02-05', '16:00:00', 'Problema digestivo', 5, 3, 5),
(6, '2024-02-06', '13:30:00', 'Infección de piel', 6, 3, 6),
(7, '2024-02-07', '15:00:00', 'Consulta dental', 7, 4, 7),
(8, '2024-02-08', '10:30:00', 'Castración', 8, 4, 8),
(9, '2024-02-09', '12:00:00', 'Artritis', 9, 5, 9),
(10, '2024-02-10', '11:00:00', 'Chequeo general', 10, 5, 10);

INSERT INTO Servicio (idServicio, tipo_Servicio, costo, descripcion, idConsulta, idMascota) VALUES
(1, 'Consulta General', 50.00, 'Consulta básica', 1, 1),
(2, 'Vacunación', 30.00, 'Vacuna antirrábica', 2, 2),
(3, 'Tratamiento herida', 75.00, 'Curación y medicación', 3, 3),
(4, 'Chequeo', 40.00, 'Revisión general', 4, 4),
(5, 'Tratamiento digestivo', 60.00, 'Medicamentos y dieta', 5, 5),
(6, 'Tratamiento piel', 80.00, 'Medicamentos tópicos', 6, 6),
(7, 'Consulta dental', 70.00, 'Limpieza y revisión', 7, 7),
(8, 'Cirugía menor', 120.00, 'Castración', 8, 8),
(9, 'Consulta artritis', 65.00, 'Medicamentos y seguimiento', 9, 9),
(10, 'Chequeo completo', 55.00, 'Examen general', 10, 10);
