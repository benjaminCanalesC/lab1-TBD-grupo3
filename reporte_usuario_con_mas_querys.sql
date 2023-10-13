
DROP FUNCTION reporte_usuario_con_mas_querys();

CREATE OR REPLACE FUNCTION reporte_usuario_con_mas_querys()
RETURNS TABLE (usuario TEXT, cantidad_querys INT, querys TEXT[], operariones TEXT[])
AS $$
DECLARE
    max_queries INT;
BEGIN
    SELECT MAX(subquery.cantidad_querys)
    INTO max_queries
    FROM (
        SELECT query_log.username, COUNT(*)::INT AS cantidad_querys
        FROM query_log
        GROUP BY query_log.username
    ) AS subquery;

    RETURN QUERY
    SELECT subquery.username, subquery.cantidad_querys, array_agg(query_log.query_text), array_agg(query_log.operation)
    FROM (
        SELECT query_log.username, COUNT(*)::INT AS cantidad_querys
        FROM query_log
        GROUP BY query_log.username
    ) AS subquery
    INNER JOIN query_log ON subquery.username = query_log.username
    WHERE subquery.cantidad_querys = max_queries
    GROUP BY subquery.username, subquery.cantidad_querys;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM reporte_usuario_con_mas_querys();



