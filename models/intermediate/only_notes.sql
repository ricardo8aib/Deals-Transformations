select 
    id as note_id,
    archived,
    createdat,
    updatedat,
    properties,
    deal
from {{ ref('raw_deals_flattened') }}
where deal is not null