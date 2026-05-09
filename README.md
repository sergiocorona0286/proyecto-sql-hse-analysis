# \# Análisis de Incidentes HSE con SQL

# \*\*Autor:\*\* Sergio Ulises Corona Sánchez

# \*\*Herramientas:\*\* MySQL 8.0 · MySQL Workbench

# \*\*Periodo de datos:\*\* 2022 – 2024

# 

# \---

# 

# \## Descripción del proyecto

# 

# Análisis de 2,000 incidentes de seguridad industrial (HSE) registrados en un entorno operativo de 8 áreas durante 3 años. El proyecto demuestra el uso de SQL avanzado aplicado a un dominio real: seguridad e higiene industrial.

# 

# \---

# 

# \## Estructura de la base de datos

# 

# | Tabla | Registros | Descripción |

# |---|---|---|

# | areas | 8 | Áreas operativas de la empresa |

# | tipos\_incidente | 6 | Categorías de incidentes HSE |

# | empleados | 150 | Personal involucrado en incidentes |

# | incidentes | 2,000 | Registro central de eventos HSE |

# 

# \---

# 

# \## Consultas desarrolladas

# 

# | # | Consulta | Técnicas utilizadas |

# |---|---|---|

# | 01 | Vista general de incidentes | JOIN múltiple |

# | 02 | Agregación por área | GROUP BY, SUM, AVG |

# | 03 | Incidentes por año y severidad | YEAR(), GROUP BY |

# | 04 | Ranking de áreas por costo | RANK(), Window Function |

# | 05 | Costo acumulado por fecha | SUM() OVER, Window Function |

# | 06 | Empleados con más incidentes | ROW\_NUMBER(), Window Function |

# | 07 | Reincidencia por área | CTE, cálculo porcentual |

# | 08 | KPI tasa de incidentes graves | CTE, CASE WHEN, RANK() |

# | 09 | Impacto del EPP | CASE WHEN, GROUP BY |

# | 10 | Tendencia mensual | CTE, LAG(), Window Function |

# | 11 | Investigaciones pendientes | CASE WHEN, JOIN |

# | 12 | Resumen ejecutivo por área | CTEs múltiples, RANK() |

# 

# \---

# 

# \## Conceptos SQL demostrados

# 

# \- INNER JOIN entre múltiples tablas

# \- GROUP BY con funciones de agregación

# \- Window Functions: RANK(), ROW\_NUMBER(), SUM() OVER, LAG()

# \- Common Table Expressions (CTEs)

# \- CASE WHEN para lógica condicional

# \- KPIs de seguridad industrial calculados con SQL

# 

# \---

# 

# \## Contexto profesional

# 

# Proyecto desarrollado como parte del portafolio de análisis de datos, combinando conocimientos técnicos de SQL con experiencia real en seguridad industrial (HSE) adquirida en Pemex Exploración y Producción.

