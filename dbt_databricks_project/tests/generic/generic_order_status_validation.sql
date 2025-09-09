{% test generic_order_status_validation(model,column_name) %}

select
  *
from {{ model }}
where {{ column_name }} not in ('PENDING', 'COMPLETE', 'DELIVERED', 'CANCELED')

{% endtest %}