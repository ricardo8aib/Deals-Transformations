select 
    id,
    archived,
    createdat,
    updatedat,
    properties
from {{ ref('raw_deals_flattened') }}
where deal is null