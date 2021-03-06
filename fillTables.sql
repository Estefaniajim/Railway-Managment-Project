INSERT INTO `railsystemfinalproject`.`roles` (`ID`, `Descripcion`) VALUES ('1', 'Cliente');
SELECT `ID`, `Descripcion` FROM `railsystemfinalproject`.`roles` WHERE  `ID`=1;
INSERT INTO `railsystemfinalproject`.`roles` (`ID`, `Descripcion`) VALUES ('2', 'Empleado');
SELECT `ID`, `Descripcion` FROM `railsystemfinalproject`.`roles` WHERE  `ID`=2;
INSERT INTO `railsystemfinalproject`.`roles` (`ID`, `Descripcion`) VALUES ('3', 'Administrador');
INSERT INTO `railsystemfinalproject`.`permisos` (`ID`, `Descripcion`) VALUES ('0', 'Modificar Credencial ID');
INSERT INTO `railsystemfinalproject`.`permisos` (`ID`, `Descripcion`) VALUES ('2', 'Ver Viajes');
INSERT INTO `railsystemfinalproject`.`permisos` (`ID`, `Descripcion`) VALUES ('3', 'Modificar/Eliminar tickets');
INSERT INTO `railsystemfinalproject`.`permisos` (`ID`) VALUES ('4');
INSERT INTO `railsystemfinalproject`.`permisos` (`ID`, `Descripcion`) VALUES ('5', 'Ver Rutas');
INSERT INTO `railsystemfinalproject`.`permisos` (`ID`, `Descripcion`) VALUES ('6', 'Ver Trenes');
INSERT INTO `railsystemfinalproject`.`permisos` (`ID`, `Descripcion`) VALUES ('7', 'Ver/Modificar/Eliminar Usuarios');
INSERT INTO `railsystemfinalproject`.`permisos` (`ID`, `Descripcion`) VALUES ('8', 'Eliminar Credenciales');
INSERT INTO `railsystemfinalproject`.`permisos` (`ID`, `Descripcion`) VALUES ('9', 'Ver/Modificar/Eliminar Viajes');
INSERT INTO `railsystemfinalproject`.`permisos` (`ID`) VALUES ('10');
INSERT INTO `railsystemfinalproject`.`permisos` (`ID`, `Descripcion`) VALUES ('11', 'Ver/Modificar/Eliminar Trenes');
INSERT INTO `railsystemfinalproject`.`permisos` (`ID`) VALUES ('12');
SELECT `ID`, `Descripcion` FROM `railsystemfinalproject`.`permisos` WHERE  `ID`=12;
UPDATE `railsystemfinalproject`.`permisos` SET `Descripcion`='Ver/Modificar/Eliminar Rutas' WHERE  `ID`=12;
INSERT INTO `railsystemfinalproject`.`permisos` (`ID`, `Descripcion`) VALUES ('13', 'Ver/Modificar/Eliminar Roles-Permisos');
INSERT INTO `railsystemfinalproject`.`role-permiso` (`RolID`, `PermisoID`) VALUES ('1', '0');
INSERT INTO `railsystemfinalproject`.`role-permiso` (`RolID`, `PermisoID`) VALUES ('1', '1');
INSERT INTO `railsystemfinalproject`.`role-permiso` (`RolID`, `PermisoID`) VALUES ('1', '2');
INSERT INTO `railsystemfinalproject`.`role-permiso` (`RolID`, `PermisoID`) VALUES ('2', '0');
INSERT INTO `railsystemfinalproject`.`role-permiso` (`RolID`, `PermisoID`) VALUES ('2', '2');
INSERT INTO `railsystemfinalproject`.`role-permiso` (`RolID`, `PermisoID`) VALUES ('2', '3');
INSERT INTO `railsystemfinalproject`.`role-permiso` (`RolID`, `PermisoID`) VALUES ('2', '4');
INSERT INTO `railsystemfinalproject`.`role-permiso` (`RolID`, `PermisoID`) VALUES ('2', '5');
INSERT INTO `railsystemfinalproject`.`role-permiso` (`RolID`, `PermisoID`) VALUES ('2', '6');
INSERT INTO `railsystemfinalproject`.`role-permiso` (`RolID`, `PermisoID`) VALUES ('3', '0');
INSERT INTO `railsystemfinalproject`.`role-permiso` (`RolID`, `PermisoID`) VALUES ('3', '7');
INSERT INTO `railsystemfinalproject`.`role-permiso` (`RolID`, `PermisoID`) VALUES ('3', '8');
INSERT INTO `railsystemfinalproject`.`role-permiso` (`RolID`, `PermisoID`) VALUES ('3', '9');
INSERT INTO `railsystemfinalproject`.`role-permiso` (`RolID`, `PermisoID`) VALUES ('3', '10');
INSERT INTO `railsystemfinalproject`.`role-permiso` (`RolID`, `PermisoID`) VALUES ('3', '11');
INSERT INTO `railsystemfinalproject`.`role-permiso` (`RolID`, `PermisoID`) VALUES ('3', '12');
INSERT INTO `railsystemfinalproject`.`role-permiso` (`RolID`, `PermisoID`) VALUES ('3', '13');
INSERT INTO `railsystemfinalproject`.`usuario` (`ID`, `Nombre`, `RolUsuario`) VALUES ('1', 'Juan Perez', '1');
INSERT INTO `railsystemfinalproject`.`usuario` (`ID`, `Nombre`, `RolUsuario`) VALUES ('2', 'Ana Maria', '1');
INSERT INTO `railsystemfinalproject`.`usuario` (`ID`, `Nombre`, `RolUsuario`) VALUES ('3', 'Jose Carlos', '1');
INSERT INTO `railsystemfinalproject`.`usuario` (`ID`, `Nombre`, `RolUsuario`) VALUES ('4', 'Pedro Gonzales', '1');
INSERT INTO `railsystemfinalproject`.`usuario` (`ID`, `Nombre`, `RolUsuario`) VALUES ('5', 'Juan Jimenez', '2');
INSERT INTO `railsystemfinalproject`.`usuario` (`ID`, `Nombre`) VALUES ('6', 'Joaquin Garcia');
INSERT INTO `railsystemfinalproject`.`usuario` (`ID`, `Nombre`, `RolUsuario`) VALUES ('6', 'Joaquin Garcia', '2');
INSERT INTO `railsystemfinalproject`.`usuario` (`ID`, `Nombre`, `RolUsuario`) VALUES ('7', 'Gerardo Mendoza', '2');
INSERT INTO `railsystemfinalproject`.`usuario` (`ID`, `Nombre`, `RolUsuario`) VALUES ('8', 'Norma Fernandez', '2');
INSERT INTO `railsystemfinalproject`.`usuario` (`ID`, `Nombre`, `RolUsuario`) VALUES ('9', 'Fernanda Zaragoza', '3');
INSERT INTO `railsystemfinalproject`.`usuario` (`ID`, `Nombre`, `RolUsuario`) VALUES ('10', 'Daniel Onez', '3');
INSERT INTO `railsystemfinalproject`.`usuario` (`ID`, `Nombre`, `RolUsuario`) VALUES ('11', 'Ernesto Mendez', '3');
INSERT INTO `railsystemfinalproject`.`usuario` (`ID`, `Nombre`, `RolUsuario`) VALUES ('12', 'Jose Luis', '3');
INSERT INTO `railsystemfinalproject`.`credenciales` (`correo`, `contraseña`, `UsuarioID`) VALUES ('JuanPerez@Gmail.com', 'JuanPerez123', '1');
INSERT INTO `railsystemfinalproject`.`credenciales` (`correo`, `contraseña`, `UsuarioID`) VALUES ('AnaMaria@Gmaiil.com', 'AnaMaria123', '2');
INSERT INTO `railsystemfinalproject`.`credenciales` (`correo`, `contraseña`, `UsuarioID`) VALUES ('JoseCarlos@Gmail.com', 'JoseCarlos123', '3');
INSERT INTO `railsystemfinalproject`.`credenciales` (`correo`, `contraseña`, `UsuarioID`) VALUES ('PedroGomez@Gmail.com', 'PedroGomez123', '4');
INSERT INTO `railsystemfinalproject`.`credenciales` (`correo`, `contraseña`, `UsuarioID`) VALUES ('JuanJimenez@Gmail.com', 'JuanJimenez@Gmail.com', '5');
UPDATE `railsystemfinalproject`.`credenciales` SET `contraseña`='JuanJimenez123' WHERE  `correo`='JuanJimenez@Gmail.com' AND `contraseña`='JuanJimenez@Gmail.com' AND `UsuarioID`=5 LIMIT 1;
INSERT INTO `railsystemfinalproject`.`credenciales` (`correo`, `contraseña`, `UsuarioID`) VALUES ('JoaquinGarcia@Gmail.com', 'JoaquinGarcia@Gmail.com', '6');
SELECT `correo`, `contraseña`, `UsuarioID` FROM `railsystemfinalproject`.`credenciales` WHERE  `correo`='JoaquinGarcia@Gmail.com' AND `contraseña`='JoaquinJimenez123' AND `UsuarioID`=6 LIMIT 1;
INSERT INTO `railsystemfinalproject`.`credenciales` (`correo`, `contraseña`, `UsuarioID`) VALUES ('GerardoMendoza@Gmail.com', 'GerardoMendez123', '7');
INSERT INTO `railsystemfinalproject`.`credenciales` (`correo`, `contraseña`, `UsuarioID`) VALUES ('NormaFernandez@Gmail.com', 'NormaFernandez123', '8');
INSERT INTO `railsystemfinalproject`.`credenciales` (`correo`, `contraseña`, `UsuarioID`) VALUES ('FernandaZaragoza@Gmail.com', 'FernandaZaragoza123', '9');
INSERT INTO `railsystemfinalproject`.`credenciales` (`correo`, `contraseña`, `UsuarioID`) VALUES ('DanielOnez@Gmail.com', 'DanielOnex123', '10');
INSERT INTO `railsystemfinalproject`.`credenciales` (`correo`, `contraseña`, `UsuarioID`) VALUES ('ErnestoMendoza@Gmail.com', 'ErnestoMendoza123', '11');
INSERT INTO `railsystemfinalproject`.`estaciones` (`ID`, `Ciudad`) VALUES ('1', 'Guadalajara');
INSERT INTO `railsystemfinalproject`.`estaciones` (`ID`, `Ciudad`) VALUES ('2', 'Distrito Federal');
INSERT INTO `railsystemfinalproject`.`estaciones` (`ID`, `Ciudad`) VALUES ('3', 'Monterrey');
INSERT INTO `railsystemfinalproject`.`estaciones` (`ID`, `Ciudad`) VALUES ('4', 'Culiacan');
INSERT INTO `railsystemfinalproject`.`estaciones` (`ID`, `Ciudad`) VALUES ('5', 'Puerto Vallarta');
INSERT INTO `railsystemfinalproject`.`estaciones` (`ID`, `Ciudad`) VALUES ('6', 'Guanajuato');
INSERT INTO `railsystemfinalproject`.`estaciones` (`ID`, `Ciudad`) VALUES ('7', 'Cancun');
INSERT INTO `railsystemfinalproject`.`estaciones` (`ID`, `Ciudad`) VALUES ('8', 'Puebla');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('1', '2');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('2', '1');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('7', '6');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('6', '7');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('3', '2');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('2', '3');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('6', '8');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('1', '5');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('7', '3');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('3', '7');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('1', '3');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('3', '1');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('6', '3');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('2', '4');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('4', '2');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('8', '2');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('4', '1');
INSERT INTO `railsystemfinalproject`.`rutas` (`PartidaID`, `DestinoID`) VALUES ('5', '7');
INSERT INTO `railsystemfinalproject`.`trenes` (`ID`, `Capacidad`) VALUES ('1', '56');
INSERT INTO `railsystemfinalproject`.`trenes` (`ID`, `Capacidad`) VALUES ('2', '59');
INSERT INTO `railsystemfinalproject`.`trenes` (`ID`, `Capacidad`) VALUES ('3', '67');
INSERT INTO `railsystemfinalproject`.`trenes` (`ID`, `Capacidad`) VALUES ('4', '80');
INSERT INTO `railsystemfinalproject`.`trenes` (`ID`, `Capacidad`) VALUES ('5', '90');
INSERT INTO `railsystemfinalproject`.`trenes` (`ID`, `Capacidad`) VALUES ('6', '87');
INSERT INTO `railsystemfinalproject`.`trenes` (`ID`, `Capacidad`) VALUES ('7', '41');
INSERT INTO `railsystemfinalproject`.`trenes` (`ID`, `Capacidad`) VALUES ('8', '64');
INSERT INTO `railsystemfinalproject`.`viajes` (`ID`, `Fecha`, `EstacionPartida`, `EstacionDestino`, `HoraPartida`, `HoraDestino`, `TrenID`) VALUES ('1', '2020-11-22', '7', '3', '02:45:40', '23:28:32', '1');
INSERT INTO `railsystemfinalproject`.`viajes` (`ID`, `Fecha`, `EstacionPartida`, `EstacionDestino`, `HoraPartida`, `HoraDestino`, `TrenID`) VALUES ('3', '2020-11-30', '3', '1', '07:15:00', '20:30:19', '2');
INSERT INTO `railsystemfinalproject`.`viajes` (`ID`, `Fecha`, `EstacionPartida`, `EstacionDestino`, `HoraPartida`, `HoraDestino`, `TrenID`) VALUES ('5', '2020-12-15', '1', '5', '10:53:02', '15:21:16', '3');
INSERT INTO `railsystemfinalproject`.`viajes` (`ID`, `Fecha`, `EstacionPartida`, `EstacionDestino`, `HoraPartida`, `HoraDestino`, `TrenID`) VALUES ('2', '2021-01-02', '6', '8', '11:15:12', '16:54:09', '4');
INSERT INTO `railsystemfinalproject`.`viajes` (`ID`, `Fecha`, `EstacionPartida`, `EstacionDestino`, `HoraPartida`, `HoraDestino`, `TrenID`) VALUES ('6', '2020-01-15', '8', '2', '19:56:23', '22:25:06', '5');
INSERT INTO `railsystemfinalproject`.`viajes` (`ID`, `Fecha`, `EstacionPartida`, `EstacionDestino`, `HoraPartida`, `HoraDestino`, `TrenID`) VALUES ('7', '2020-02-14', '2', '4', '08:50:00', '22:12:55', '6');
SELECT `ID`, `Fecha`, `EstacionPartida`, `EstacionDestino`, `HoraPartida`, `HoraDestino`, `TrenID` FROM `railsystemfinalproject`.`viajes` WHERE  `ID`=7;
UPDATE `railsystemfinalproject`.`viajes` SET `ID`='4' WHERE  `ID`=7;
SELECT `ID`, `Fecha`, `EstacionPartida`, `EstacionDestino`, `HoraPartida`, `HoraDestino`, `TrenID` FROM `railsystemfinalproject`.`viajes` WHERE  `ID`=4;
INSERT INTO `railsystemfinalproject`.`viajes` (`ID`, `Fecha`, `EstacionPartida`, `EstacionDestino`, `HoraPartida`, `HoraDestino`, `TrenID`) VALUES ('7', '2020-02-23', '4', '1', '12:20:04', '24:00:00', '7');
INSERT INTO `railsystemfinalproject`.`viajes` (`ID`, `Fecha`, `EstacionPartida`, `EstacionDestino`, `HoraPartida`, `HoraDestino`, `TrenID`) VALUES ('8', '2020-03-11', '5', '7', '02:15:00', '21:35:14', '8');
INSERT INTO `railsystemfinalproject`.`tickets` (`ViajeID`, `EstacionPartida`, `EstacionDestino`, `UsuarioID`) VALUES ('1', '7', '3', '1');
INSERT INTO `railsystemfinalproject`.`tickets` (`ViajeID`, `EstacionPartida`, `EstacionDestino`, `UsuarioID`) VALUES ('3', '3', '1', '1');
INSERT INTO `railsystemfinalproject`.`tickets` (`ViajeID`, `EstacionPartida`, `EstacionDestino`, `UsuarioID`) VALUES ('5', '1', '5', '1');
INSERT INTO `railsystemfinalproject`.`tickets` (`ViajeID`, `EstacionPartida`, `EstacionDestino`, `UsuarioID`) VALUES ('4', '2', '4', '2');
INSERT INTO `railsystemfinalproject`.`tickets` (`ViajeID`, `EstacionPartida`, `EstacionDestino`, `UsuarioID`) VALUES ('6', '8', '2', '2');
INSERT INTO `railsystemfinalproject`.`tickets` (`ViajeID`, `EstacionPartida`, `EstacionDestino`, `UsuarioID`) VALUES ('2', '6', '8', '2');
INSERT INTO `railsystemfinalproject`.`tickets` (`ViajeID`, `EstacionPartida`, `EstacionDestino`, `UsuarioID`) VALUES ('4', '2', '4', '3');
INSERT INTO `railsystemfinalproject`.`tickets` (`ViajeID`, `EstacionPartida`, `EstacionDestino`, `UsuarioID`) VALUES ('7', '4', '1', '3');
INSERT INTO `railsystemfinalproject`.`tickets` (`ViajeID`, `EstacionPartida`, `EstacionDestino`, `UsuarioID`) VALUES ('3', '3', '1', '4');
INSERT INTO `railsystemfinalproject`.`tickets` (`ViajeID`, `EstacionPartida`, `EstacionDestino`, `UsuarioID`) VALUES ('5', '1', '5', '4');
INSERT INTO `railsystemfinalproject`.`tickets` (`ViajeID`, `EstacionPartida`, `EstacionDestino`, `UsuarioID`) VALUES ('8', '5', '7', '4');