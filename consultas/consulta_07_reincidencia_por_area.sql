-- ============================================================
-- CONSULTA 07: Reincidencia por área con CTE
-- Proyecto: Análisis HSE
-- Autor: Sergio Ulises Corona Sánchez
-- ============================================================

USE hse_analysis;

WITH reincidencia_por_area AS (
    SELECT
        a.nombre                        AS area,
        COUNT(*)                        AS total_incidentes,
        SUM(i.reincidencia)             AS total_reincidencias
    FROM       incidentes i
    INNER JOIN areas      a ON i.area_id = a.area_id
    GROUP BY   a.nombre
)
SELECT
    area,
    total_incidentes,
    total_reincidencias,
    ROUND((total_reincidencias / total_incidentes) * 100, 2) AS pct_reincidencia
FROM   reincidencia_por_area
ORDER BY pct_reincidencia DESC;