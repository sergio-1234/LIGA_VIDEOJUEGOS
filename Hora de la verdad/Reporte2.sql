SELECT 
    j.jugador_id,
    j.nickname,
    j.primer_nombre || ' ' || j.primer_apellido AS nombre_completo,
    e.nombre_equipo,
    SUM(es.kills) AS total_kills,
    ROUND(AVG(es.kills), 2) AS promedio_kills_por_partida,
    ROUND(SUM(es.kills)::NUMERIC / NULLIF(SUM(es.muertes), 1), 2) AS kd_ratio
FROM 
    Jugador j
JOIN 
    Equipo e ON j.equipo_id = e.equipo_id
JOIN 
    Estadísticas es ON j.jugador_id = es.jugador_id
JOIN 
    Partida p ON es.partida_id = p.partida_id
JOIN 
    Torneo t ON p.torneo_id = t.torneo_id
WHERE 
    t.torneo_id = 1  -- Cambiar por el ID del torneo deseado
GROUP BY 
    j.jugador_id, j.nickname, j.primer_nombre, j.primer_apellido, e.nombre_equipo
ORDER BY 
    total_kills DESC
LIMIT 10;  -- Top 10 jugadores con más kills