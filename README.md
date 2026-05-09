\# Análisis de Incidentes HSE con SQL y Python



\*\*Autor:\*\* Sergio Ulises Corona Sánchez

\*\*Herramientas:\*\* MySQL 8.0 · MySQL Workbench · Python · Pandas · Matplotlib · Seaborn

\*\*Periodo de datos:\*\* 2022 – 2024



\---



\## Descripción del proyecto



Análisis completo de 2,000 incidentes de seguridad industrial (HSE) registrados en 8 áreas operativas durante 3 años. El proyecto combina SQL avanzado para extracción y transformación de datos, con Python para visualización e interpretación de resultados.



\---



\## Estructura del repositorio



&#x20;   proyecto-sql-hse-analysis/

&#x20;   ├── hse\_setup.sql               # Creación de base de datos y carga de datos

&#x20;   ├── consultas/                  # 15 scripts SQL con análisis progresivo

&#x20;   ├── resultados/                 # CSVs exportados y gráficas generadas

&#x20;   └── analisis\_resultados.ipynb   # Notebook de análisis y visualizaciones



\---



\## Estructura de la base de datos



| Tabla | Registros | Descripción |

|---|---|---|

| areas | 8 | Áreas operativas de la empresa |

| tipos\_incidente | 6 | Categorías de incidentes HSE |

| empleados | 150 | Personal involucrado en incidentes |

| incidentes | 2,000 | Registro central de eventos HSE |



\---



\## Consultas SQL desarrolladas



| # | Consulta | Técnicas utilizadas |

|---|---|---|

| 01 | Vista general de incidentes | JOIN múltiple |

| 02 | Agregación por área | GROUP BY, SUM, AVG |

| 03 | Incidentes por año y severidad | YEAR(), GROUP BY |

| 04 | Ranking de áreas por costo | RANK(), Window Function |

| 05 | Costo acumulado por fecha | SUM() OVER, Window Function |

| 06 | Empleados con más incidentes | ROW\_NUMBER(), Window Function |

| 07 | Reincidencia por área | CTE, cálculo porcentual |

| 08 | KPI tasa de incidentes graves | CTE, CASE WHEN, RANK() |

| 09 | Impacto del EPP | CASE WHEN, GROUP BY |

| 10 | Tendencia mensual | CTE, LAG(), Window Function |

| 11 | Investigaciones pendientes | CASE WHEN, JOIN |

| 12 | Resumen ejecutivo por área | CTEs múltiples, RANK() |

| 13 | Análisis por turno | GROUP BY, AVG, CASE WHEN |

| 14 | Correlación entre variables | Python, Pandas, Seaborn |

| 15 | Efectividad de medidas correctivas | RANK(), Window Function |



\---



\## Hallazgos principales



\- El costo total de incidentes HSE en el periodo superó los \*\*60 millones MXN\*\*.

\- \*\*Mantenimiento\*\* es el área más crítica: primer lugar en incidentes, costo total y tasa de incidentes graves.

\- La reincidencia promedio es \*\*27.6%\*\*, indicando fallas sistémicas en el cierre de acciones correctivas.

\- El \*\*20.4%\*\* de las investigaciones están pendientes, dejando causas raíz sin identificar.

\- \*\*Producción\*\* tiene la mayor tasa de reincidencia (31.3%) a pesar de tener la menor tasa de incidentes graves.

\- \*\*Almacén\*\* presenta el mejor desempeño relativo en todos los KPIs analizados.

\- El turno \*\*Nocturno\*\* concentra el mayor número de incidentes y el costo promedio más alto ($34,950 MXN).

\- \*\*Cambio de procedimiento\*\* es la medida correctiva más efectiva con solo 21.43% de reincidencia frente al promedio de 27.6%.



\---



\## Conceptos SQL demostrados



\- INNER JOIN entre múltiples tablas

\- GROUP BY con funciones de agregación

\- Window Functions: RANK(), ROW\_NUMBER(), SUM() OVER, LAG()

\- Common Table Expressions (CTEs) simples y múltiples

\- CASE WHEN para lógica condicional

\- KPIs de seguridad industrial calculados con SQL



\---



\## Contexto profesional



Proyecto desarrollado como parte del portafolio de análisis de datos, combinando conocimientos técnicos de SQL y Python con experiencia real en seguridad industrial (HSE) adquirida en Pemex Exploración y Producción.

