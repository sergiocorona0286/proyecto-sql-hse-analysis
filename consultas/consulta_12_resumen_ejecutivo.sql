-- ============================================================
-- CONSULTA 12: Resumen ejecutivo HSE por área
-- Proyecto: Análisis HSE
-- Autor: Sergio Ulises Corona Sánchez
-- ============================================================

USE hse_analysis;

WITH totales AS (
    SELECT
        a.nombre                                            AS area,
        COUNT(*)                                            AS total_incidentes,
        SUM(i.costo_directo + i.costo_investigacion)        AS costo_total,
        ROUND(AVG(i.dias_perdidos), 2)                      AS promedio_dias_perdidos
    FROM       incidentes i
    INNER JOIN areas      a ON i.area_id = a.area_id
    GROUP BY   a.nombre
),
graves AS (
    SELECT
        a.nombre                                            AS area,
        SUM(CASE WHEN i.severidad IN ('Grave', 'Crítico')
                 THEN 1 ELSE 0 END)                         AS total_graves
    FROM       incidentes i
    INNER JOIN areas      a ON i.area_id = a.area_id
    GROUP BY   a.nombre
),
reincidencias AS (
    SELECT
        a.nombre                                            AS area,
        SUM(i.reincidencia)                                 AS total_reincidencias
    FROM       incidentes i
    INNER JOIN areas      a ON i.area_id = a.area_id
    GROUP BY   a.nombre
)
SELECT
    t.area,
    t.total_incidentes,
    ROUND(t.costo_total, 2)                                 AS costo_total,
    t.promedio_dias_perdidos,
    g.total_graves,
    ROUND(g.total_graves / t.total_incidentes * 100, 2)     AS pct_graves,
    r.total_reincidencias,
    ROUND(r.total_reincidencias / t.total_incidentes * 100, 2) AS pct_reincidencia,
    RANK() OVER (ORDER BY t.costo_total DESC)               AS ranking_costo
FROM        totales      t
INNER JOIN  graves       g ON t.area = g.area
INNER JOIN  reincidencias r ON t.area = r.area
ORDER BY    ranking_costo;