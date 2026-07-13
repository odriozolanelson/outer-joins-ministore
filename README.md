-- ══════════════════════════════════════════
-- MiniStore — Soluciones con Outer JOINs
-- Autor: Nelson Odriozola
-- Fecha: 13/07/2026
-- ══════════════════════════════════════════

¿Por qué usaste LEFT JOIN para la Consulta 1 y no INNER JOIN? ¿Qué se perdería si usaras INNER JOIN?
Use LEFT JOIN porque yo queria poder visualizar aquellos productos que no tenian ninguna venta asociada. En caso de haber usado INNER JOIN los valores nulos no hubiesen venido, es decir me hubiese mostrado solo aquellos productos con ventas, y yo queria identificar los productos que no tenian ninguna venta.

¿Por qué usaste RIGHT JOIN para la Consulta 2? ¿Qué tabla está a la izquierda y cuál a la derecha en tu consulta?
En la consulta 2 use RIGHT JOIN porque yo queria identificar aquellas ventas registradas que no tenian asociado ningun producto en la tabla respectiva. Es decir una venta de un producto que no estaba identificado. La tabla izquierda es la de productos y la derecha de ventas.

¿Qué representan los valores NULL en cada resultado? Explicá con un ejemplo concreto de los datos qué significa que venta_id sea NULL en la Consulta 1 y que producto_id de productos sea NULL en la Consulta 2.
Los valores NULL como resultado indican que no hay una coicidencia para ese registro entre ambas tablas. En la consulta 1 el NULL en el id_venta significa que dicho producto no se ha vendido hasta el momento. El NULL en producto_id en la Consutla 2 indica que esa venta no tiene ningun producto asociado, es decir se vendió un producto que no esta identificado.

¿Cuándo usarías FULL OUTER JOIN en un caso real de negocio?
El FULL OUTER JOIN lo usaria cuando quiero tener un panorama general de ambas tablas conjuntamente. Para identificar todos aquellos registros que no tengas un registro vinculado entre las dos tablas
