SELECT 
    j.jugador_id,
    j.nickname,
    j.primer_nombre || ' ' || j.primer_apellido AS nombre_completo,
    j.rol,
    e.nombre_equipo,
    COUNT(es.partida_id) AS partidas_participadas
FROM 
    Jugador j
JOIN 
    Equipo e ON j.equipo_id = e.equipo_id
LEFT JOIN 
    Estadísticas es ON j.jugador_id = es.jugador_id
GROUP BY 
    j.jugador_id, j.nickname, j.primer_nombre, j.primer_apellido, j.rol, e.nombre_equipo
ORDER BY 
    partidas_participadas DESC, j.nickname;