SELECT 
    torneo_id,
    nombre_torneo,
    fecha_inicio,
    fecha_fin,
    videojuego_id
FROM 
    Torneo
WHERE 
    fecha_fin < CURRENT_DATE
ORDER BY 
    fecha_fin DESC;