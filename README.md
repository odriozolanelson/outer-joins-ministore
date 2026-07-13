# MiniStore – Soluciones con OUTER JOIN

**Autor:** Nelson Odriozola  
**Fecha:** 13/07/2026

---

## ¿Por qué usaste `LEFT JOIN` para la Consulta 1 y no `INNER JOIN`?

Utilicé `LEFT JOIN` porque quería visualizar también aquellos productos que no tenían ninguna venta asociada.

Si hubiera utilizado `INNER JOIN`, esos productos no habrían aparecido en el resultado, ya que este tipo de unión solo devuelve los registros que tienen coincidencia en ambas tablas. Como objetivo de la consulta era identificar los productos sin ventas, `LEFT JOIN` era la opción adecuada.

---

## ¿Por qué usaste `RIGHT JOIN` para la Consulta 2?

Utilicé `RIGHT JOIN` porque quería identificar las ventas registradas que no tenían asociado ningún producto en la tabla **Productos**.

En la consulta:

- La tabla de la izquierda es **Productos**.
- La tabla de la derecha es **Ventas**.

De esta manera, se muestran todas las ventas, incluso aquellas cuyo `producto_id` no existe en la tabla de productos.

---

## ¿Qué representan los valores `NULL` en cada resultado?

Los valores `NULL` indican que no existe una coincidencia entre los registros de ambas tablas.

### Consulta 1 (`LEFT JOIN`)

Si `venta_id` es `NULL`, significa que ese producto nunca fue vendido.

### Consulta 2 (`RIGHT JOIN`)

Si `producto_id` de la tabla **Productos** es `NULL`, significa que existe una venta cuyo producto no está registrado en la tabla de productos.

---

## ¿Cuándo usarías `FULL OUTER JOIN` en un caso real de negocio?

Utilizaría `FULL OUTER JOIN` cuando necesite obtener una visión completa de ambas tablas, mostrando:

- los productos sin ventas;
- las ventas sin un producto asociado;
- y los registros que sí tienen coincidencia.

Este tipo de consulta es útil para realizar controles de integridad de datos, detectar inconsistencias o validar la calidad de la información almacenada en la base de datos.
