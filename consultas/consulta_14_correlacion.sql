-- ============================================================
-- CONSULTA 14: Variables numéricas para correlación
-- Proyecto: Análisis HSE
-- Autor: Sergio Ulises Corona Sánchez
-- ============================================================

USE hse_analysis;

SELECT
    i.costo_directo,
    i.costo_investigacion,
    i.dias_perdidos,
    i.dias_sin_accidente,
    e.antiguedad_anos,
    CASE WHEN i.severidad = 'Leve'     THEN 1
         WHEN i.severidad = 'Moderado' THEN 2
         WHEN i.severidad = 'Grave'    THEN 3
         WHEN i.severidad = 'Crítico'  THEN 4
    END AS severidad_num
FROM       incidentes i
INNER JOIN empleados  e ON i.empleado_id = e.empleado_id;