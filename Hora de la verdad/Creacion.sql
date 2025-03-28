CREATE TABLE Videojuego (
    videojuego_id SERIAL PRIMARY KEY,
    nombre_videojuego VARCHAR(100) UNIQUE NOT NULL,
    empresa_desarrolladora VARCHAR(100) NOT NULL,
    fecha_lanzamiento DATE NOT NULL
);


CREATE TABLE Equipo (
    equipo_id SERIAL PRIMARY KEY,
    nombre_equipo VARCHAR(100) UNIQUE NOT NULL,
    entrenador VARCHAR(100) NOT NULL,
    país_origen VARCHAR(50) NOT NULL,
    fecha_creación DATE NOT NULL
);

CREATE TABLE Jugador (
    jugador_id SERIAL PRIMARY KEY,
    nickname VARCHAR(50) UNIQUE NOT NULL,
    primer_nombre VARCHAR(50) NOT NULL,
    segundo_nombre VARCHAR(50) NOT NULL,
    primer_apellido VARCHAR(50) NOT NULL,
    segundo_apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    país_origen VARCHAR(50) NOT NULL,
    rol VARCHAR(30) NOT NULL,
    equipo_id INTEGER NOT NULL,
    FOREIGN KEY (equipo_id) REFERENCES Equipo(equipo_id)
);


ALTER TABLE Equipo
ADD COLUMN jugador_id INTEGER,
ADD CONSTRAINT fk_equipo_jugador FOREIGN KEY (jugador_id) REFERENCES Jugador(jugador_id);


CREATE TABLE Torneo (
    torneo_id SERIAL PRIMARY KEY,
    nombre_torneo VARCHAR(100) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    videojuego_id INTEGER NOT NULL,
    FOREIGN KEY (videojuego_id) REFERENCES Videojuego(videojuego_id),
    CONSTRAINT chk_fechas CHECK (fecha_fin >= fecha_inicio)
);


CREATE TABLE Partida (
    partida_id SERIAL PRIMARY KEY,
    fecha TIMESTAMP NOT NULL,
    duración INTEGER NOT NULL,
    equipo_ganador INTEGER,
    torneo_id INTEGER NOT NULL,
    FOREIGN KEY (equipo_ganador) REFERENCES Equipo(equipo_id),
    FOREIGN KEY (torneo_id) REFERENCES Torneo(torneo_id)
);


CREATE TABLE Estadísticas (
    estadistica_id SERIAL PRIMARY KEY,
    kills INTEGER DEFAULT 0,
    muertes INTEGER DEFAULT 0,
    asistencias INTEGER DEFAULT 0,
    puntos_daño INTEGER DEFAULT 0,
    jugador_id INTEGER NOT NULL,
    partida_id INTEGER NOT NULL,
    FOREIGN KEY (jugador_id) REFERENCES Jugador(jugador_id),
    FOREIGN KEY (partida_id) REFERENCES Partida(partida_id),
    CONSTRAINT uk_jugador_partida UNIQUE (jugador_id, partida_id)
);


CREATE TABLE Equipo_Torneo (
    equipo_torneo_id SERIAL PRIMARY KEY,
    equipo_id INTEGER NOT NULL,
    torneo_id INTEGER NOT NULL,
    posición_final INTEGER NOT NULL,
    FOREIGN KEY (equipo_id) REFERENCES Equipo(equipo_id),
    FOREIGN KEY (torneo_id) REFERENCES Torneo(torneo_id),
    CONSTRAINT uk_equipo_torneo UNIQUE (equipo_id, torneo_id)
);