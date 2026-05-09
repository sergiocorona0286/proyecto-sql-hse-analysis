-- ============================================================
-- CONSULTA 01: Vista general de incidentes con JOINs
-- Proyecto: Análisis HSE
-- Autor: Sergio Ulises Corona Sánchez
-- ============================================================

USE hse_analysis;

SELECT
    a.nombre          AS area,
    t.categoria       AS tipo_incidente,
    i.severidad,
    i.costo_directo,
    i.dias_perdidos
FROM       incidentes      i
INNER JOIN areas           a ON i.area_id = a.area_id
INNER JOIN tipos_incidente t ON i.tipo_id = t.tipo_id
LIMIT 20;