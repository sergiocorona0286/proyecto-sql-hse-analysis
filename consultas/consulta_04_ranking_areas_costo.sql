-- ============================================================
-- CONSULTA 04: Ranking de áreas por costo total con RANK()
-- Proyecto: Análisis HSE
-- Autor: Sergio Ulises Corona Sánchez
-- ============================================================

USE hse_analysis;

SELECT
    a.nombre                            AS area,
    COUNT(*)                            AS total_incidentes,
    SUM(i.costo_directo)                AS costo_total,
    RANK() OVER (ORDER BY SUM(i.costo_directo) DESC) AS ranking_costo
FROM       incidentes i
INNER JOIN areas      a ON i.area_id = a.area_id
GROUP BY   a.nombre
ORDER BY   ranking_costo;