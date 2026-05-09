-- ============================================================
-- CONSULTA 09: Impacto del EPP en severidad y costo
-- Proyecto: Análisis HSE
-- Autor: Sergio Ulises Corona Sánchez
-- ============================================================

USE hse_analysis;

SELECT
    CASE WHEN i.epp_usado = 1 THEN 'Con EPP' ELSE 'Sin EPP' END  AS uso_epp,
    COUNT(*)                                                       AS total_incidentes,
    ROUND(AVG(i.costo_directo), 2)                                AS costo_promedio,
    ROUND(AVG(i.dias_perdidos), 2)                                AS dias_perdidos_promedio,
    SUM(CASE WHEN i.severidad IN ('Grave', 'Crítico')
             THEN 1 ELSE 0 END)                                   AS incidentes_graves
FROM   incidentes i
GROUP BY i.epp_usado
ORDER BY i.epp_usado DESC;