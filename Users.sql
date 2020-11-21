CREATE TABLE `roles` (
    `ID` INT(11) NOT NULL,
    `Descripcion` VARCHAR(250) NOT NULL COLLATE 'utf8_general_ci',
    PRIMARY KEY (`ID`) USING BTREE
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

CREATE TABLE `estaciones` (
    `ID` INT(11) NOT NULL,
    `Ciudad` VARCHAR(250) NOT NULL COLLATE 'utf8_general_ci',
    PRIMARY KEY (`ID`) USING BTREE
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
CREATE TABLE `Trenes` (
    `ID` INT NOT NULL,
    `Capacidad` INT NOT NULL,
    PRIMARY KEY (`ID`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
CREATE TABLE `Rutas` (
    `PartidaID` INT NOT NULL,
    `DestinoID` INT NOT NULL,
    CONSTRAINT `FK__estaciones` FOREIGN KEY (`PartidaID`) REFERENCES `estaciones` (`ID`),
    CONSTRAINT `FK__estaciones_2` FOREIGN KEY (`DestinoID`) REFERENCES `estaciones` (`ID`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
CREATE TABLE `Viajes` (
    `ID` INT NOT NULL,
    `Fecha` DATE NOT NULL,
    `EstacionPartida` INT NOT NULL,
    `EstacionDestino` INT NOT NULL,
    `HoraPartida` TIME NOT NULL,
    `HoraDestino` TIME NOT NULL CHECK("HoraDestino" > "HoraPartida")
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
    `HoraDestino` TIME NOT NULL CHECK(`HoraDestino`>`HoraPartida`),
    `TrenID` INT NOT NULL,
    PRIMARY KEY (`ID`),
    CONSTRAINT `FK_viajes_estaciones` FOREIGN KEY (`EstacionPartida`) REFERENCES `estaciones` (`ID`),
    CONSTRAINT `FK_viajes_estaciones_2` FOREIGN KEY (`EstacionDestino`) REFERENCES `estaciones` (`ID`),
    CONSTRAINT `FK_viajes_trenes` FOREIGN KEY (`TrenID`) REFERENCES `trenes` (`ID`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
