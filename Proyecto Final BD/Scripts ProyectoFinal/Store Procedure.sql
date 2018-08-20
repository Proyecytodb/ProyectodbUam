
USE ProyectoBaseDatos
GO

--listado de clientes activos en el sistema, además de mostrar quienes tiene como autorizados.


CREATE PROCEDURE SP_Listar_CLientes_Activos_y_Autorizados
AS
	BEGIN
		SELECT RegistroPersonas.IdPersona, RegistroPersonas.Cedula, RegistroPersonas.Nombre, Invitados.Invitado1, Invitados.Invitado2, Invitados.Invitado3, Invitados.Invitado4, Invitados.Invitado5
		FROM   RegistroPersonas INNER JOIN Invitados ON RegistroPersonas.IdPersona = Invitados.IdPersona
		WHERE  Empleado=0 and Estado=1
	END
GO

--**Listado de zonas de entretenimiento y piscinas por zona

CREATE PROCEDURE SP_Listar_Zonas_de_Entretenimiento
AS
	BEGIN
		SELECT AccionesPorZona.Descripcion, Zonas.Descripcion AS ZONA
		FROM AccionesPorZona INNER JOIN Zonas ON AccionesPorZona.idZona = Zonas.idZona
	END
GO

--**Listado de empleados registrados y activos
CREATE PROCEDURE SP_Listado_Empleados_Activos
AS
	BEGIN
		SELECT IdPersona, Empleado, Cedula, Nombre, Estado
		FROM RegistroPersonas
		WHERE Empleado = 1 AND ESTADO = 1
	END
GO

--**Listado de zonas reservadas por cliente

CREATE PROCEDURE SP_Listado_de_Zonas_Reservadas_por_Cliente
AS
	BEGIN
		SELECT RegistroPersonas.IdPersona, RegistroPersonas.Nombre, RegistroPersonas.Cedula, Zonas.Descripcion
		FROM RegistroPersonas INNER JOIN Reservaciones ON RegistroPersonas.IdPersona = Reservaciones.IdPersona INNER JOIN Zonas ON Reservaciones.idZona = Zonas.idZona
	END
GO

--**Listado de espacios ocupamos mensual 

SELECT Reservaciones.FechaReserva, Reservaciones.IdPersona, RegistroPersonas.Cedula, RegistroPersonas.Nombre, Zonas.Descripcion
FROM RegistroPersonas INNER JOIN Reservaciones ON RegistroPersonas.IdPersona = Reservaciones.IdPersona INNER JOIN Zonas ON Reservaciones.idZona = Zonas.idZona
GROUP BY Reservaciones.FechaReserva, Reservaciones.IdPersona, RegistroPersonas.Cedula, RegistroPersonas.Nombre, Zonas.Descripcion


--**Listado de cantidad de visitantes por mes y año

SELECT Reservaciones.FechaReserva, RegistroPersonas.IdPersona, RegistroPersonas.Cedula, RegistroPersonas.Nombre
FROM RegistroPersonas INNER JOIN Reservaciones ON RegistroPersonas.IdPersona = Reservaciones.IdPersona
where Empleado = 0
GROUP BY Reservaciones.FechaReserva, RegistroPersonas.IdPersona, RegistroPersonas.Cedula, RegistroPersonas.Nombre