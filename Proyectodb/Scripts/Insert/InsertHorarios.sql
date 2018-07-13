use Proyectodb;
go

insert into RagoDias values (0,'Domingos-Sabado'),(1,'Lunes-Viernes'),(2,'Martes-Sabados'), 
							(3,'Miercoles-Domingos'),(4,'Jueves-Lunes'),(5,'Viernes-Martes'),
							(6,'Sabados-Miercioles'),(7,'Domingos-Jueves')  

insert into Horario values (0,'Sin descripcion','00:00','00:00',0),
						   (1,'Personal Restaurante Diurno','05:00','14:00',2),
						   (2,'Personal Restaurante Diurno','05:00','14:00',7),
						   (3,'Personal Restaurante Mixto','13:00','22:00',2),
						   (4,'Personal Restaurante Mixto','13:00','22:00',7),
						   (5,'Personal Mantenimiento Diurno','05:00','14:00',2),
						   (6,'Personal Mantenimiento Diurno','05:00','14:00',7),
						   (7,'Personal Mantenimiento Mixto','13:00','22:00',2),
						   (8,'Personal Mantenimiento Mixto','13:00','22:00',7),
						   (9,'Personal Mantenimiento Nocturno','21:00','02:00',2),
						   (10,'Personal Mantenimiento Nocturno','21:00','02:00',7),
						   (11,'Personal Adminitrativo','07:00','17:00',1),
						   (100,'SalaEventos','08:00','22:00',0),
						   (200,'CanchaBasketBall','08:00','22:00',0),
						   (300,'Piscina','08:00','22:00',0),
						   (400,'Restaurante','08:00','22:00',0),
						   (500,'CampoGolf','08:00','22:00',0),
						   (600,'CanchaTenis','08:00','22:00',0),
						   (700,'CanchaFutbol','08:00','22:00',0),
						   (800,'Spa','08:00','22:00',0),
						   (900,'SalonBaile','08:00','22:00',0)