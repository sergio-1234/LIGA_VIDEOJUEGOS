SELECT 
    e.equipo_id,
    e.nombre_equipo,
    p.partida_id,
    p.fecha,
    p.duración,
    CASE WHEN p.equipo_ganador = e.equipo_id THEN 'Ganó' ELSE 'Perdió' END AS resultado,
    SUM(es.kills) AS total_kills,
    SUM(es.muertes) AS total_muertes,
    SUM(es.asistencias) AS total_asistencias,
    ROUND(SUM(es.kills)::NUMERIC / NULLIF(SUM(es.muertes), 1), 2) AS ratio_kd,
    SUM(es.puntos_daño) AS total_daño
FROM 
    Equipo e
JOIN 
    Jugador j ON e.equipo_id = j.equipo_id
JOIN 
    Estadísticas es ON j.jugador_id = es.jugador_id
JOIN 
    Partida p ON es.partida_id = p.partida_id
JOIN 
    Torneo t ON p.torneo_id = t.torneo_id
WHERE 
    e.equipo_id = 1 
    AND t.torneo_id = 1  
GROUP BY 
    e.equipo_id, e.nombre_equipo, p.partida_id, p.fecha, p.duración, p.equipo_ganador
ORDER BY 
    p.fecha;