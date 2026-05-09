-- ============================================================
-- CONSULTA 15: Medidas correctivas más aplicadas
-- Proyecto: Análisis HSE
-- Autor: Sergio Ulises Corona Sánchez
-- ============================================================

USE hse_analysis;

SELECT
    i.medida_correctiva,
    COUNT(*)                                            AS total_aplicaciones,
    ROUND(AVG(i.costo_directo), 2)                     AS costo_promedio,
    SUM(i.reincidencia)                                 AS reincidencias,
    ROUND(SUM(i.reincidencia) / COUNT(*) * 100, 2)     AS pct_reincidencia,
    RANK() OVER (ORDER BY COUNT(*) DESC)               AS ranking
FROM   incidentes i
GROUP BY i.medida_correctiva
ORDER BY total_aplicaciones DESC;