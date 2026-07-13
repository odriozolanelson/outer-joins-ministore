-- ══════════════════════════════════════════
-- MiniStore — Soluciones con Outer JOINs
-- Autor: Nelson Odriozola
-- Fecha: 13/07/2026
-- ══════════════════════════════════════════

-- ── CONSULTA 1: LEFT JOIN ─────────────────
-- Pregunta de negocio: ¿Qué productos del catálogo nunca fueron vendidos?

	SELECT P.producto_id, P.nombre, P.categoria
	FROM productos AS P
	LEFT JOIN ventas AS V
	ON P.producto_id = V.producto_id
	WHERE V.venta_id IS NULL;

-- Mostrá todos los productos y sus ventas asociadas.
	SELECT P.producto_id, P.nombre, P.categoria, V.fecha_venta, V.venta_id, V.cantidad, P.precio, Total = (P.precio * V.cantidad)
	FROM productos AS P
	LEFT JOIN ventas AS V
	ON P.producto_id = V.producto_id



-- ── CONSULTA 2: RIGHT JOIN ────────────────
-- Pregunta de negocio: ¿Existen ventas registradas con productos
-- que no figuran en nuestro catálogo? (posible error de carga de datos)
-- Los registros huérfanos aparecerán con NULL en las columnas de productos.

	SELECT V.venta_id, P.producto_id, P.nombre, P.categoria
	FROM productos AS P
	RIGHT JOIN ventas AS V
	ON P.producto_id = V.producto_id
	WHERE P.producto_id IS NULL;


-- ── CONSULTA 3: FULL OUTER JOIN ───────────
-- Pregunta de negocio: Vista completa de auditoría que muestre
-- todos los productos y todas las ventas sin perder ninguna fila,
-- identificando tanto productos sin ventas como ventas sin producto.

	SELECT *
	FROM productos AS P
	FULL OUTER JOIN ventas AS V
	ON P.producto_id = V.producto_id;


