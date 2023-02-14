SELECT --top 10
      t.name AS table_name,
      --SCHEMA_NAME(schema_id) AS schema_name,
      c.name AS column_name
      ,*
FROM
      sys.tables AS t INNER JOIN sys.columns c ON t.OBJECT_ID = c.OBJECT_ID
WHERE
      c.name like '%vlr_cmp%'
      AND t.name NOT like 'bkp%'
      AND t.name NOT like 'bak%'
      AND t.name NOT like 'crq%'
      AND t.name NOT like '%bkp%'
 
order by table_name,column_name
