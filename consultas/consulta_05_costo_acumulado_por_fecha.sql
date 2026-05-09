-- ============================================================
-- CONSULTA 05: Costo acumulado por fecha
-- Proyecto: Análisis HSE
-- Autor: Sergio Ulises Corona Sánchez
-- ============================================================

USE hse_analysis;

SELECT
    i.fecha,
    SUM(i.costo_directo)                                    AS costo_del_dia,
    SUM(SUM(i.costo_directo)) OVER (ORDER BY i.fecha)       AS costo_acumulado
FROM   incidentes i
GROUP BY i.fecha
ORDER BY i.fecha;