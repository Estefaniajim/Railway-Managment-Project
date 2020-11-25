SELECT
Nombre,
credenciales.correo AS "Correo",
roles.Descripcion AS "Rol",
permisos.Descripcion AS "Permisos"
FROM usuario
INNER JOIN roles ON roles.ID = usuario.RolUsuario
Inner JOIN credenciales ON credenciales.UsuarioID = usuario.ID
INNER JOIN `role-permiso` ON `role-permiso`.RolID = usuario.RolUsuario
INNER JOIN permisos ON permisos.ID = `role-permiso`.PermisoID;
SELECT
usuario.Nombre AS "Nombre del Usuario",
viajes.Fecha AS "Fecha",
estacion1.Ciudad AS "Ciudad de partida",
estacion2.Ciudad AS "Ciudad de destino",
viajes.HoraPartida AS "Hora de partida",
viajes.HoraDestino AS "Hora de llegada"
FROM tickets
INNER JOIN viajes ON viajes.ID = tickets.ViajeID
INNER JOIN estaciones AS estacion1 ON estacion1.ID = tickets.EstacionPartida
INNER JOIN estaciones as estacion2 ON estacion2.ID  =  tickets.EstacionDestino
INNER JOIN usuario ON usuario.ID = tickets.UsuarioID;
SELECT
Fecha,
estacion1.Ciudad AS "Ciudad de partida",    
estacion2.Ciudad AS "Ciudad de destino",
HoraPartida AS "Hora de partida",
HoraDestino AS"Hora de llegada",
trenes.Capacidad AS "Asientos Disponibles"
FROM viajes
INNER JOIN estaciones AS estacion1 ON estacion1.ID = viajes.EstacionPartida
INNER JOIN estaciones AS estacion2 ON estacion2.ID = viajes.EstacionDestino
INNER JOIN trenes ON viajes.TrenID = trenes.ID;
SELECT
estacion1.Ciudad AS "Ciudad de partida",    
estacion2.Ciudad AS "Ciudad de destino"
FROM rutas
INNER JOIN estaciones AS estacion1 ON rutas.PartidaID = estacion1.ID
INNER JOIN estaciones AS estacion2 ON rutas.DestinoID = estacion2.ID;
SELECT
usuario.Nombre AS "Nombre",
correo,
contraseña,
roles.Descripcion AS "Rol"
From credenciales
INNER JOIN usuario ON credenciales.UsuarioID = usuario.RolUsuario
INNER JOIN roles ON usuario.RolUsuario = roles.ID;
