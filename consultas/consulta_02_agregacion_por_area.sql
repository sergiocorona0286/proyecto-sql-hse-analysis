-- ============================================================
-- CONSULTA 02: Agregación de incidentes por área
-- Proyecto: Análisis HSE
-- Autor: Sergio Ulises Corona Sánchez
-- ============================================================

USE hse_analysis;

SELECT
    a.nombre                        AS area,
    COUNT(*)                        AS total_incidentes,
    SUM(i.costo_directo)            AS costo_total,
    ROUND(AVG(i.dias_perdidos), 2)  AS promedio_dias_perdidos
FROM       incidentes i
INNER JOIN areas      a ON i.area_id = a.area_id
GROUP BY   a.nombre
ORDER BY   total_incidentes DESC;