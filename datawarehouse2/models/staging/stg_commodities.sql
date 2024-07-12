with source as (
    SELECT 
        "Date",
        "Close",
        simbolo
    FROM 
        {{source('dbsales_ao1f','commodities')}} 
),


renamed as (
    SELECT 
        cast("Date" AS DATE) AS data,
        "Close" AS valor_fechamento,
        simbolo
    FROM
        source    
)

SELECT * FROM renamed