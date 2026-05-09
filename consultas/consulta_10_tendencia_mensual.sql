-- ============================================================
-- CONSULTA 10: Tendencia mensual de incidentes
-- Proyecto: Análisis HSE
-- Autor: Sergio Ulises Corona Sánchez
-- ============================================================

USE hse_analysis;

WITH incidentes_por_mes AS (
    SELECT
        YEAR(i.fecha)                   AS anio,
        MONTH(i.fecha)                  AS mes,
        COUNT(*)                        AS total_incidentes,
        SUM(i.costo_directo)            AS costo_total
    FROM   incidentes i
    GROUP BY YEAR(i.fecha), MONTH(i.fecha)
)
SELECT
    anio,
    mes,
    total_incidentes,
    ROUND(costo_total, 2)                                        AS costo_total,
    LAG(total_incidentes) OVER (ORDER BY anio, mes)              AS mes_anterior,
    ROUND(
        (total_incidentes - LAG(total_incidentes) OVER (ORDER BY anio, mes))
        / LAG(total_incidentes) OVER (ORDER BY anio, mes) * 100
    , 2)                                                         AS cambio_pct
FROM   incidentes_por_mes
ORDER BY anio, mes;