{{% test order_status_is_valid(model, column) %}}

select
  {{ column }}
from {{ model }}
where {{ column }} not in ('PENDING', 'COMPLETE', 'DELIVERED', 'CANCELED')

{{% endtest %}}