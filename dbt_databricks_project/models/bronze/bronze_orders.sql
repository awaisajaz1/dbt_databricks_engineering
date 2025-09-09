select 
* 
from {{ source('dlt_demo', 'orders') }}