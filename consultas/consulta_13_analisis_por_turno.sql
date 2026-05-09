-- ============================================================
-- CONSULTA 13: Análisis de incidentes por turno
-- Proyecto: Análisis HSE
-- Autor: Sergio Ulises Corona Sánchez
-- ============================================================

USE hse_analysis;

SELECT
    e.turno,
    COUNT(*)                                            AS total_incidentes,
    ROUND(AVG(i.costo_directo), 2)                     AS costo_promedio,
    ROUND(AVG(i.dias_perdidos), 2)                     AS dias_perdidos_promedio,
    SUM(CASE WHEN i.severidad IN ('Grave', 'Crítico')
             THEN 1 ELSE 0 END)                         AS incidentes_graves,
    ROUND(SUM(CASE WHEN i.severidad IN ('Grave', 'Crítico')
             THEN 1 ELSE 0 END) / COUNT(*) * 100, 2)   AS pct_graves
FROM       incidentes i
INNER JOIN empleados  e ON i.empleado_id = e.empleado_id
GROUP BY   e.turno
ORDER BY   total_incidentes DESC;