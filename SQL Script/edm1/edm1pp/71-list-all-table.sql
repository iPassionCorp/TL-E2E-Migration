SELECT table_schema, table_name FROM information_schema.tables 
where table_type = 'BASE TABLE' 
and table_schema not in ('pg_catalog', 'information_schema', 'public') 
order by table_schema, table_name;
