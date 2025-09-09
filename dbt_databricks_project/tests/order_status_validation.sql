select
  *
from {{ ref('bronze_orders') }}
where order_status not in ('PENDING', 'COMPLETE', 'DELIVERED', 'CANCELED')