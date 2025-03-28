SELECT 
    j.jugador_id,
    j.nickname,
    j.primer_nombre,
    j.segundo_nombre,
    j.primer_apellido,
    j.segundo_apellido,
    j.rol,
    j.país_origen,
    e.nombre_equipo
FROM 
    Jugador j
JOIN 
    Equipo e ON j.equipo_id = e.equipo_id
WHERE 
    j.rol = 'Fragger';