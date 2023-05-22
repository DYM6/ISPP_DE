SELECT TABLE_NAME
,COLUMN_NAME
,DATA_TYPE
,CHARACTER_MAXIMUM_LENGTH
,IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
ORDER BY TABLE_NAME, ORDINAL_POSITION