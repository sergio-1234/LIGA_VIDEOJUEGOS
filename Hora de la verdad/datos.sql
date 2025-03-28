
INSERT INTO Equipo (equipo_id,nombre_equipo, entrenador, país_origen, fecha_creación) VALUES
(001,'Team Liquid', 'Johan Lucchesi', 'Países Bajos', '2000-01-01'),
(002,'Fnatic', 'Christine Chi', 'Reino Unido', '2004-07-23'),
(003,'G2 Esports', 'Carlos Rodríguez', 'España', '2013-10-15'),
(004,'Cloud9', 'Henry Greer', 'Estados Unidos', '2013-01-01'),
(005,'T1', 'Bae Seong-woong', 'Corea del Sur', '2002-05-13');


INSERT INTO Jugador (jugador_id,nickname, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, fecha_nacimiento, país_origen, rol, equipo_id) VALUES

(1,'Nitro', 'Nicholas', 'James', 'Cannella', 'Smith', '1994-08-16', 'Estados Unidos', 'Líder', 1),
(2,'EliGE', 'Jonathan', 'Michael', 'Jablonowski', 'Brown', '1997-07-16', 'Estados Unidos', 'Fragger', 1),

(3,'Boaster', 'Jake', 'William', 'Howlett', 'Jones', '1995-05-25', 'Reino Unido', 'Strategist', 2),
(4,'Derke', 'Nikita', 'Alexandrovich', 'Sirmitev', 'Johnson', '2002-02-06', 'Finlandia', 'Duelista', 2),

(5,'m0NESY', 'Ilya', 'Dmitrievich', 'Osipov', 'Williams', '2005-05-01', 'Rusia', 'AWPer', 3),
(6,'huNter-', 'Nemanja', 'Marko', 'Kovač', 'Davis', '1995-03-06', 'Bosnia', 'Rifler', 3),

(7,'Ax1Le', 'Sergey', 'Ivanovich', 'Rykhtorov', 'Miller', '2001-07-16', 'Rusia', 'Entry', 4),
(8,'sh1ro', 'Dmitry', 'Petrovich', 'Sokolov', 'Wilson', '2001-04-13', 'Rusia', 'AWPer', 4),

(9,'faker', 'Lee', 'Sang-hyeok', 'Kim', 'Lee', '1996-05-07', 'Corea del Sur', 'Mid Laner', 5),
(10,'zeus', 'Choi', 'Woo-je', 'Park', 'Choi', '2004-01-31', 'Corea del Sur', 'Top Laner', 5);

INSERT INTO Videojuego (videojuego_id,nombre_videojuego, empresa_desarrolladora, fecha_lanzamiento) VALUES
(01,'League of Legends', 'Riot Games', '2009-10-27'),
(02,'Valorant', 'Riot Games', '2020-06-02'),
(03,'Dota 2', 'Valve Corporation', '2013-07-09'),
(04,'Counter-Strike 2', 'Valve Corporation', '2023-09-27'),
(05,'Overwatch 2', 'Blizzard Entertainment', '2022-10-04');

INSERT INTO Torneo (torneo_id,nombre_torneo, fecha_inicio, fecha_fin, videojuego_id) VALUES
(1,'Valorant Champions 2023', '2023-08-06', '2023-08-26', 2),
(2,'League of Legends Worlds 2023', '2023-10-10', '2023-11-19', 1),
(3, 'IEM Cologne 2023', '2023-07-25', '2023-08-06', 4);


INSERT INTO Equipo_Torneo (equipo_id, torneo_id, posición_final) VALUES

(1, 1, 3),  
(2, 1, 1),  
(3, 1, 4), 

(5, 2, 2),  
(1, 2, 5),  
(4, 2, 3), 
(3, 3, 1),  
(4, 3, 2),  
(2, 3, 5),  
(1, 3, 4);  


INSERT INTO Partida (partida_id, fecha, duración, equipo_ganador, torneo_id) VALUES

(1,'2023-08-06 14:00:00', 52, 2, 1),
(2,'2023-08-06 16:30:00', 48, 1, 1),
(3,'2023-08-07 13:00:00', 65, 2, 1),
(4,'2023-08-07 15:45:00', 71, 3, 1),
(5,'2023-08-12 12:00:00', 58, 2, 1),
(6,'2023-08-12 14:30:00', 62, 1, 1),
(7,'2023-08-20 18:00:00', 77, 2, 1),
(8,'2023-08-26 20:00:00', 84, 2, 1),  

(9,'2023-10-10 09:00:00', 37, 5, 2),
(10,'2023-10-10 11:20:00', 42, 1, 2),
(11,'2023-10-15 10:00:00', 55, 4, 2),
(12,'2023-10-15 12:45:00', 48, 5, 2),
(13,'2023-11-05 15:00:00', 62, 5, 2),
(14,'2023-11-12 16:30:00', 58, 4, 2),
(15,'2023-11-19 19:00:00', 71, 5, 2),  

(16,'2023-07-25 13:00:00', 45, 3, 3),
(17,'2023-07-26 14:30:00', 52, 4, 3),
(18,'2023-07-30 16:00:00', 63, 3, 3),
(19,'2023-08-04 18:00:00', 57, 4, 3),
(20,'2023-08-06 20:00:00', 76, 3, 3),  
(21,'2023-08-07 21:00:00', 77, 3, 3);


INSERT INTO Estadísticas (estadistica_id, jugador_id, partida_id, kills, muertes, asistencias, puntos_daño) VALUES

(1, 3, 1, 18, 12, 8, 2450),  
(2, 4, 1, 27, 10, 5, 3120),  
(3, 1, 1, 15, 18, 10, 2100),
(4, 2, 1, 20, 16, 7, 2780),  


(5, 1, 2, 22, 14, 9, 2950),
(6, 2, 2, 25, 12, 6, 3100),
(7, 3, 2, 14, 20, 12, 1900),
(8, 4, 2, 16, 18, 8, 2250),


(9, 3, 3, 19, 13, 11, 2600),
(10, 4, 3, 24, 11, 7, 2980),
(11, 5, 3, 17, 19, 9, 2350),
(12, 6, 3, 15, 20, 10, 2200),


(13, 3, 7, 23, 15, 12, 2870),
(14, 4, 7, 29, 13, 6, 3250),
(15, 1, 7, 18, 20, 14, 2500),
(16, 2, 7, 21, 18, 9, 2750),


(17, 9, 9, 8, 2, 12, 18500),  
(18, 10, 9, 5, 3, 15, 12400), 
(19, 1, 10, 3, 5, 20, 9800), 
(20, 2, 10, 7, 4, 18, 15600),

(21, 5, 17, 28, 14, 8, 3200),  
(22, 6, 17, 22, 16, 12, 2850),  
(23, 7, 18, 25, 13, 9, 2950),   
(24, 8, 18, 19, 15, 14, 2650),  


(25, 5, 21, 32, 18, 10, 3650),
(26, 6, 21, 26, 16, 15, 3100),
(27, 7, 21, 24, 20, 12, 2950);

