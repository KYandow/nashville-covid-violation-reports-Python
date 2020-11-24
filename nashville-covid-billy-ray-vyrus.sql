SELECT * FROM counties LIMIT 10

SELECT * FROM counties
WHERE county ilike '%Davidson%' AND state ilike '%Tennessee%'

/* SELECT * FROM mask_use 
WHERE county_fips LIKE '%47037%'
 0.677

SELECT AVG(always) FROM mask_use
 0.508 */

