-- ============================================================
-- CONSULTA 08: KPI - Tasa de incidentes graves por área
-- Proyecto: Análisis HSE
-- Autor: Sergio Ulises Corona Sánchez
-- ============================================================

USE hse_analysis;

WITH gravedad_por_area AS (
    SELECT
        a.nombre                                        AS area,
        COUNT(*)                                        AS total_incidentes,
        SUM(CASE WHEN i.severidad IN ('Grave', 'Crítico')
                 THEN 1 ELSE 0 END)                     AS incidentes_graves
    FROM       incidentes i
    INNER JOIN areas      a ON i.area_id = a.area_id
    GROUP BY   a.nombre
)
SELECT
    area,
    total_incidentes,
    incidentes_graves,
    ROUND((incidentes_graves / total_incidentes) * 100, 2) AS pct_incidentes_graves,
    RANK() OVER (ORDER BY (incidentes_graves / total_incidentes) DESC) AS ranking_peligrosidad
FROM   gravedad_por_area
ORDER BY ranking_peligrosidad;