WITH victorias_equipo AS (
    SELECT 
        e.equipo_id,
        e.nombre_equipo,
        COUNT(p.partida_id) AS partidas_ganadas,
        (SELECT COUNT(*) FROM Partida WHERE torneo_id = 1) AS total_partidas_torneo
    FROM 
        Equipo e
    JOIN 
        Partida p ON e.equipo_id = p.equipo_ganador
    JOIN 
        Torneo t ON p.torneo_id = t.torneo_id
    WHERE 
        t.torneo_id = 1  -- Cambiar por el ID del torneo deseado
    GROUP BY 
        e.equipo_id, e.nombre_equipo
)
SELECT 
    nombre_equipo,
    partidas_ganadas,
    total_partidas_torneo,
    ROUND((partidas_ganadas * 100.0 / NULLIF(total_partidas_torneo, 0)), 2) AS porcentaje_victorias
FROM 
    victorias_equipo
ORDER BY 
    partidas_ganadas DESC, porcentaje_victorias DESC;