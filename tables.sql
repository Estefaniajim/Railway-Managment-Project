CREATE TABLE `usuario` (
    `ID` INT(11) NOT NULL,
    `Nombre` VARCHAR(250) NOT NULL DEFAULT 'None' COLLATE 'utf8_general_ci',
    `RolUsuario` INT(11) NOT NULL,
    PRIMARY KEY (`ID`) USING BTREE,
    INDEX `FK1` (`RolUsuario`) USING BTREE,
    CONSTRAINT `FK1` FOREIGN KEY (`RolUsuario`) REFERENCES `railsystemfinalproject`.`roles` (`ID`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `credenciales` (
    `correo` VARCHAR(250) NOT NULL COLLATE 'utf8_general_ci',
    `contraseña` VARCHAR(250) NOT NULL COLLATE 'utf8_general_ci',
    `UsuarioID` INT(11) NOT NULL,
    INDEX `FK__usuario` (`UsuarioID`) USING BTREE,
    CONSTRAINT `FK__usuario` FOREIGN KEY (`UsuarioID`) REFERENCES `railsystemfinalproject`.`usuario` (`ID`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `roles` (
    `ID` INT(11) NOT NULL,
    `Descripcion` VARCHAR(250) NOT NULL COLLATE 'utf8_general_ci',
    PRIMARY KEY (`ID`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `role-permiso` (
    `RolID` INT(11) NOT NULL,
    `PermisoID` INT(11) NOT NULL,
    INDEX `RolID` (`RolID`) USING BTREE,
    INDEX `PermisoID` (`PermisoID`) USING BTREE,
    CONSTRAINT `PermisoID` FOREIGN KEY (`PermisoID`) REFERENCES `railsystemfinalproject`.`permisos` (`ID`) ON UPDATE RESTRICT ON DELETE RESTRICT,
    CONSTRAINT `RolID` FOREIGN KEY (`RolID`) REFERENCES `railsystemfinalproject`.`roles` (`ID`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `permisos` (
    `ID` INT(11) NOT NULL,
    `Descripcion` VARCHAR(250) NOT NULL DEFAULT '' COLLATE 'utf8_general_ci',
    PRIMARY KEY (`ID`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `tickets` (
    `ViajeID` INT(11) NOT NULL,
    `EstacionPartida` INT(11) NOT NULL,
    `EstacionDestino` INT(11) NOT NULL,
    `UsuarioID` INT(11) NOT NULL,
    INDEX `viaje` (`ViajeID`) USING BTREE,
    INDEX `estacionInicio` (`EstacionPartida`) USING BTREE,
    INDEX `estacionPartida` (`EstacionDestino`) USING BTREE,
    INDEX `usuarioID` (`UsuarioID`) USING BTREE,
    CONSTRAINT `estacionInicio` FOREIGN KEY (`EstacionPartida`) REFERENCES `railsystemfinalproject`.`estaciones` (`ID`) ON UPDATE RESTRICT ON DELETE RESTRICT,
    CONSTRAINT `estacionPartida` FOREIGN KEY (`EstacionDestino`) REFERENCES `railsystemfinalproject`.`estaciones` (`ID`) ON UPDATE RESTRICT ON DELETE RESTRICT,
    CONSTRAINT `usuarioID` FOREIGN KEY (`UsuarioID`) REFERENCES `railsystemfinalproject`.`usuario` (`ID`) ON UPDATE RESTRICT ON DELETE RESTRICT,
    CONSTRAINT `viaje` FOREIGN KEY (`ViajeID`) REFERENCES `railsystemfinalproject`.`viajes` (`ID`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `viajes` (
    `ID` INT(11) NOT NULL,
    `Fecha` DATE NOT NULL,
    `EstacionPartida` INT(11) NOT NULL,
    `EstacionDestino` INT(11) NOT NULL,
    `HoraPartida` TIME NOT NULL,
    `HoraDestino` TIME NOT NULL,
    `TrenID` INT(11) NOT NULL,
    PRIMARY KEY (`ID`) USING BTREE,
    INDEX `FK_viajes_estaciones` (`EstacionPartida`) USING BTREE,
    INDEX `FK_viajes_estaciones_2` (`EstacionDestino`) USING BTREE,
    INDEX `FK_viajes_trenes` (`TrenID`) USING BTREE,
    CONSTRAINT `FK_viajes_estaciones` FOREIGN KEY (`EstacionPartida`) REFERENCES `railsystemfinalproject`.`estaciones` (`ID`) ON UPDATE RESTRICT ON DELETE RESTRICT,
    CONSTRAINT `FK_viajes_estaciones_2` FOREIGN KEY (`EstacionDestino`) REFERENCES `railsystemfinalproject`.`estaciones` (`ID`) ON UPDATE RESTRICT ON DELETE RESTRICT,
    CONSTRAINT `FK_viajes_trenes` FOREIGN KEY (`TrenID`) REFERENCES `railsystemfinalproject`.`trenes` (`ID`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `estaciones` (
    `ID` INT(11) NOT NULL,
    `Ciudad` VARCHAR(250) NOT NULL COLLATE 'utf8_general_ci',
    PRIMARY KEY (`ID`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `trenes` (
    `ID` INT(11) NOT NULL,
    `Capacidad` INT(11) NOT NULL,
    PRIMARY KEY (`ID`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
CREATE TABLE `rutas` (
    `PartidaID` INT(11) NOT NULL,
    `DestinoID` INT(11) NOT NULL,
    INDEX `FK__estaciones` (`PartidaID`) USING BTREE,
    INDEX `FK__estaciones_2` (`DestinoID`) USING BTREE,
    CONSTRAINT `FK__estaciones` FOREIGN KEY (`PartidaID`) REFERENCES `railsystemfinalproject`.`estaciones` (`ID`) ON UPDATE RESTRICT ON DELETE RESTRICT,
    CONSTRAINT `FK__estaciones_2` FOREIGN KEY (`DestinoID`) REFERENCES `railsystemfinalproject`.`estaciones` (`ID`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;