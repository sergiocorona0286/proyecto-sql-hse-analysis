-- ============================================================
-- CONSULTA 11: Investigaciones pendientes por tipo de incidente
-- Proyecto: Análisis HSE
-- Autor: Sergio Ulises Corona Sánchez
-- ============================================================

USE hse_analysis;

SELECT
    t.categoria                                         AS tipo_incidente,
    t.requiere_investigacion,
    COUNT(*)                                            AS total_incidentes,
    SUM(CASE WHEN i.investigacion_completada = 0
             THEN 1 ELSE 0 END)                         AS pendientes,
    ROUND(
        SUM(CASE WHEN i.investigacion_completada = 0
                 THEN 1 ELSE 0 END) / COUNT(*) * 100
    , 2)                                                AS pct_pendiente
FROM       incidentes      i
INNER JOIN tipos_incidente t ON i.tipo_id = t.tipo_id
GROUP BY   t.tipo_id, t.categoria, t.requiere_investigacion
ORDER BY   pendientes DESC;