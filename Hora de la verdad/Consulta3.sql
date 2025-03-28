SELECT 
    t.nombre_torneo,
    SUM(es.kills) AS total_kills_torneo
FROM 
    Estadísticas es
JOIN 
    Partida p ON es.partida_id = p.partida_id
JOIN 
    Torneo t ON p.torneo_id = t.torneo_id
WHERE 
    t.nombre_torneo = 'Valorant Champions 2023'  -- Cambiar por el torneo deseado
GROUP BY 
    t.nombre_torneo;