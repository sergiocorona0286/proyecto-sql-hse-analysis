-- ============================================================
-- CONSULTA 03: Incidentes por año y severidad
-- Proyecto: Análisis HSE
-- Autor: Sergio Ulises Corona Sánchez
-- ============================================================

USE hse_analysis;

SELECT
    YEAR(i.fecha)   AS anio,
    i.severidad,
    COUNT(*)        AS total_incidentes
FROM   incidentes i
GROUP BY YEAR(i.fecha), i.severidad
ORDER BY anio, i.severidad;