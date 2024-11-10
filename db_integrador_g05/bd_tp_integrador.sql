CREATE DATABASE `db_integrador_g05`;
USE `db_integrador_g05`;

-- Tabla Provincias
CREATE TABLE `provincias` (
  `idprovincias` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idprovincias`)
);

INSERT INTO `provincias` (`nombre`) VALUES 
    ('Buenos Aires'), ('Córdoba'), ('Santa Fe'), ('Mendoza');

-- Tabla Localidades
CREATE TABLE `localidades` (
  `idlocalidades` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `idprovincia` int(11) NOT NULL,
  PRIMARY KEY (`idlocalidades`),
  KEY `fk_provincia_idx` (`idprovincia`),
  CONSTRAINT `fk_provincia` FOREIGN KEY (`idprovincia`) REFERENCES `provincias` (`idprovincias`) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO `localidades` (`nombre`, `idprovincia`) VALUES 
    ('La Plata', 1), ('Rosario', 3), ('Córdoba', 2), ('Mendoza', 4);

-- Tabla Nacionalidades
CREATE TABLE `nacionalidades` (
  `idnacionalidades` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idnacionalidades`)
);

INSERT INTO `nacionalidades` (`nombre`) VALUES 
    ('Argentina'), ('Brasil'), ('Uruguay');

-- Tabla Cliente
CREATE TABLE `cliente` (
  `dni_cliente` int(11) NOT NULL,
  `cuil` BIGINT(11) NOT NULL, -- Corregido a BIGINT(11)
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `sexo` enum('M','F') NOT NULL,
  `nacionalidad` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `localidad` int(11) NOT NULL,
  `correo_electronico` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`dni_cliente`),
  UNIQUE KEY `cuil_UNIQUE` (`cuil`),
  KEY `fk_nacionalidades_idx` (`nacionalidad`),
  KEY `fk_localidades_idx` (`localidad`),
  CONSTRAINT `fk_localidades` FOREIGN KEY (`localidad`) REFERENCES `localidades` (`idlocalidades`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nacionalidades` FOREIGN KEY (`nacionalidad`) REFERENCES `nacionalidades` (`idnacionalidades`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO `cliente` ( `dni_cliente`,`cuil`, `nombre`, `apellido`, `sexo`, `nacionalidad`, `fecha_nacimiento`, `direccion`, `localidad`, `correo_electronico`, `telefono`, `estado`) VALUES 
    (33333333,20333333333, 'Juan', 'Pérez', 'M', 1, '1980-01-15', 'Calle Falsa 123', 1, 'juan.perez@example.com', '1122223333', 1),
    (22222222,27222222222, 'María', 'González', 'F', 1, '1985-08-20', 'Av. Siempreviva 456', 2, 'maria.gonzalez@example.com', '3415556666', 1);

-- Tabla Tipo Cuenta
CREATE TABLE `tipo_cuenta` (
  `idtipo_cuenta` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipo_cuenta`)
);

INSERT INTO `tipo_cuenta` (`nombre`) VALUES 
    ('Cuenta Corriente'), ('Caja de Ahorro');

-- Tabla Cuentas
CREATE TABLE `cuentas` (
  `num_cuenta` int(11) NOT NULL AUTO_INCREMENT,
  `dni_cliente` int(11) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `tipo_cuenta` int(11) NOT NULL,
  `cbu` varchar(45) NOT NULL,
  `saldo` double NOT NULL DEFAULT '10000',
  `estado` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`num_cuenta`),
  KEY `fk_tipo_cuenta_idx` (`tipo_cuenta`),
  KEY `fk_cliente_cuenta_idx` (`dni_cliente`),
  CONSTRAINT `fk_cliente_cuenta` FOREIGN KEY (`dni_cliente`) REFERENCES `cliente` (`dni_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tipo_cuenta` FOREIGN KEY (`tipo_cuenta`) REFERENCES `tipo_cuenta` (`idtipo_cuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO `cuentas` (`dni_cliente`, `fecha_creacion`, `tipo_cuenta`, `cbu`, `saldo`, `estado`) VALUES 
    (33333333, '2023-01-01', 1, '1111111111111111111111', 15000, 1),
    (22222222, '2023-02-15', 2, '2222222222222222222222', 12000, 1);

-- Tabla Plazo Cuotas
CREATE TABLE `plazo_cuotas` (
  `id_plazo_cuotas` int(11) NOT NULL AUTO_INCREMENT,
  `cant_cuotas` smallint(6) NOT NULL,
  `intereses` smallint(6) NOT NULL,
  PRIMARY KEY (`id_plazo_cuotas`)
);

INSERT INTO `plazo_cuotas` (`cant_cuotas`, `intereses`) VALUES 
    (12, 10), (24, 15), (36, 20);

-- Tabla Prestamos
CREATE TABLE `prestamos` (
  `idprestamo` int(11) NOT NULL AUTO_INCREMENT,
  `num_cuenta` int(11) NOT NULL,
  `fecha_alta` date NOT NULL,
  `importe_neto` double NOT NULL,
  `plazo_pago` smallint(6) NOT NULL,
  `importe_bruto` double NOT NULL,
  `cant_cuotas` int(11) NOT NULL,
  `autorizado` bit(1) NOT NULL DEFAULT b'1',
  `id_movimiento` int(11) NOT NULL,
  PRIMARY KEY (`idprestamo`),
  UNIQUE KEY `id_movimiento_UNIQUE` (`id_movimiento`),
  KEY `fk_cantidad_cuotas_idx` (`cant_cuotas`),
  KEY `fk_cuenta_idx` (`num_cuenta`),
  CONSTRAINT `fk_cantidad_cuotas` FOREIGN KEY (`cant_cuotas`) REFERENCES `plazo_cuotas` (`id_plazo_cuotas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuenta` FOREIGN KEY (`num_cuenta`) REFERENCES `cuentas` (`num_cuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO `prestamos` (`num_cuenta`, `fecha_alta`, `importe_neto`, `plazo_pago`, `importe_bruto`, `cant_cuotas`, `autorizado`, `id_movimiento`) VALUES 
    (1, '2023-03-08', 50000, 12, 55000, 1, 1, 1);

-- Tabla Tipo Movimiento
CREATE TABLE `tipo_movimiento` (
  `idtipo_movimiento` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipo_movimiento`)
);

INSERT INTO `tipo_movimiento` (`descripcion`) VALUES 
    ('Depósito'), ('Extracción'), ('Transferencia'), ('Préstamo'), ('Pago de Cuota');

-- Tabla Movimientos
CREATE TABLE `movimientos` (
  `idmovimiento` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `detalle` varchar(45) NOT NULL DEFAULT 'Sin detalle',
  `importe` double NOT NULL DEFAULT '0',
  `tipo_movimiento` int(11) NOT NULL,
  PRIMARY KEY (`idmovimiento`),
  KEY `fk_tipo_movimiento_idx` (`tipo_movimiento`),
  CONSTRAINT `fk_tipo_movimiento` FOREIGN KEY (`tipo_movimiento`) REFERENCES `tipo_movimiento` (`idtipo_movimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO `movimientos` (`fecha`, `detalle`, `importe`, `tipo_movimiento`) VALUES 
    ('2023-01-02', 'Depósito inicial', 10000, 1),
    ('2023-03-08', 'Préstamo', 50000, 4),
    ('2023-03-10', 'Transferencia', 500, 3); -- Nuevo movimiento para la transferencia

-- Tabla Movimientos x Cuentas
CREATE TABLE `movimientos_x_cuentas` (
  `num_cuenta` int(11) NOT NULL,
  `idmovimiento` int(11) NOT NULL,
  PRIMARY KEY (`num_cuenta`,`idmovimiento`),
  KEY `fk_movimientos_idx` (`idmovimiento`),
  CONSTRAINT `fk_cuentas` FOREIGN KEY (`num_cuenta`) REFERENCES `cuentas` (`num_cuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movimientos` FOREIGN KEY (`idmovimiento`) REFERENCES `movimientos` (`idmovimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO `movimientos_x_cuentas` (`num_cuenta`, `idmovimiento`) VALUES 
    (1, 1), (1, 2), (1, 3);

-- Tabla Cuotas
CREATE TABLE `cuotas` (
  `idcuota` int(11) NOT NULL,
  `id_prestamo` int(11) NOT NULL,
  `num_cuenta` int(11) NOT NULL,
  `monto` double NOT NULL,
  `fecha_pago` date NOT NULL,
  `pagada` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`idcuota`),
  KEY `fk_prestamo_idx` (`id_prestamo`),
  KEY `fk_cuenta_idx` (`num_cuenta`),
  KEY `fk_cuentaPrestamo_idx` (`num_cuenta`),
  CONSTRAINT `fk_cuentaPrestamo` FOREIGN KEY (`num_cuenta`) REFERENCES `cuentas` (`num_cuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_prestamo` FOREIGN KEY (`id_prestamo`) REFERENCES `prestamos` (`idprestamo`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO `cuotas` (`idcuota`, `id_prestamo`, `num_cuenta`, `monto`, `fecha_pago`, `pagada`) VALUES 
    (1, 1, 1, 5500, '2023-04-08', 0); 

-- Tabla Transferencias
CREATE TABLE `transferencias` (
  `idtransferencia` int(11) NOT NULL AUTO_INCREMENT,
  `cuenta_origen` int(11) NOT NULL,
  `cuenta_destino` int(11) NOT NULL,
  `idMovimiento` int(11) NOT NULL,
  PRIMARY KEY (`idtransferencia`),
  KEY `fk_cuentas_idx` (`cuenta_origen`),
  KEY `fk_movimiento_idx` (`idMovimiento`),
  KEY `fk_cuenta_destino_idx` (`cuenta_destino`),
  CONSTRAINT `fk_cuenta_destino` FOREIGN KEY (`cuenta_destino`) REFERENCES `cuentas` (`num_cuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cuenta_origen` FOREIGN KEY (`cuenta_origen`) REFERENCES `cuentas` (`num_cuenta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movimiento` FOREIGN KEY (`idMovimiento`) REFERENCES `movimientos` (`idmovimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO `transferencias` (`cuenta_origen`, `cuenta_destino`, `idMovimiento`) VALUES 
    (1, 2, 3); -- Ahora debería funcionar correctamente

-- Tabla Usuarios
CREATE TABLE usuarios (
  id_usuario int(11) NOT NULL AUTO_INCREMENT,
  nombre_usuario varchar(45) NOT NULL,
  dni_cliente int(11) NULL,
  contrasenia varchar(45) NOT NULL,
  tipo_usuario enum('cliente', 'administrador') NOT NULL DEFAULT 'cliente',
  cant_cuentas_activas smallint(6) NOT NULL DEFAULT '1',
  estado bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (id_usuario),
  UNIQUE KEY dni_cliente_UNIQUE (dni_cliente),
  CONSTRAINT fk_clientes FOREIGN KEY (dni_cliente) REFERENCES cliente (dni_cliente) ON DELETE NO ACTION ON UPDATE NO ACTION
);

INSERT INTO `usuarios` (`nombre_usuario`, `dni_cliente`, `contrasenia`, `tipo_usuario`, `cant_cuentas_activas`, `estado`) VALUES 
    ('juan.perez', 33333333, 'contraseña123', 'cliente', 1, 1),
    ('maria.gonzalez', 22222222, 'password456', 'cliente', 1, 1),
    ('admin', NULL, 'admin123', 'administrador', 0, 1);
    select * from usuarios
   