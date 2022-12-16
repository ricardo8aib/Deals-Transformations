select
	properties::json->>'hs_object_id' as id,
	properties::json->>'dealname' as dealname,
    properties::json->>'role_description' as role_description,
	properties::json->>'closedate' as closedate,
	properties::json->>'dealstage' as dealstage,
	properties::json->>'department' as department,
    properties::json->>'hs_priority' as hs_priority,
    properties::json->>'hs_next_step' as hs_next_step
from {{ ref('flattened_airbyte_data') }} 