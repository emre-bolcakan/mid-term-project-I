SELECT * From flights WHERE arr_delay IS NOT NULL AND arr_delay < 200 AND CAST(fl_date as date) > '2019-01-01' AND CAST(fl_date as date) < '2019-12-31' ORDER BY EXTRACT(month from CAST(fl_date as date)) LIMIT 10000

-- SELECT
--   * 
-- FROM (
--   SELECT
--     ROW_NUMBER() OVER (PARTITION BY EXTRACT(MONTH FROM CAST(fl_date as date)) ORDER BY ) AS r,
--     t.*
--   FROM
--     xxx t) x
-- WHERE
--   x.r <= 2;
-- EXTRACT(MONTH FROM CAST(fl_date as date))