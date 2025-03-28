SELECT 
    e.equipo_id,
    e.nombre_equipo,
    COUNT(p.partida_id) AS partidas_ganadas
FROM 
    Equipo e
JOIN 
    Partida p ON e.equipo_id = p.equipo_ganador
JOIN 
    Torneo t ON p.torneo_id = t.torneo_id
WHERE 
    t.nombre_torneo = 'Valorant Champions 2023'  -- Cambiar por el torneo deseado
GROUP BY 
    e.equipo_id, e.nombre_equipo
ORDER BY 
    partidas_ganadas DESC
LIMIT 1;