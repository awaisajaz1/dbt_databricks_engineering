{{ config(materialized='view') }}

select * from 
{{ source('dlt_demo', 'customers') }};