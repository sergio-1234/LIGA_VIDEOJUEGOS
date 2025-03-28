SELECT 
    p.partida_id,
    p.fecha,
    p.duración,
    t.nombre_torneo,
    e.nombre_equipo AS equipo_ganador
FROM 
    Partida p
JOIN 
    Torneo t ON p.torneo_id = t.torneo_id
LEFT JOIN 
    Equipo e ON p.equipo_ganador = e.equipo_id
WHERE 
    p.duración > 30
    AND t.nombre_torneo = 'Valorant Champions 2023'
ORDER BY 
    p.duración DESC;