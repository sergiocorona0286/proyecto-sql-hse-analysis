-- ============================================================
-- CONSULTA 06: Empleados con más incidentes con ROW_NUMBER()
-- Proyecto: Análisis HSE
-- Autor: Sergio Ulises Corona Sánchez
-- ============================================================

USE hse_analysis;

SELECT
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC)  AS numero,
    e.nombre                                    AS empleado,
    e.puesto,
    e.turno,
    COUNT(*)                                    AS total_incidentes,
    SUM(i.dias_perdidos)                        AS total_dias_perdidos
FROM       incidentes i
INNER JOIN empleados  e ON i.empleado_id = e.empleado_id
GROUP BY   e.empleado_id, e.nombre, e.puesto, e.turno
ORDER BY   total_incidentes DESC
LIMIT 20;