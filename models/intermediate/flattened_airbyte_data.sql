select
	_airbyte_data::json->'_airbyte_data' ->> 'id' as id,
	_airbyte_data::json->'_airbyte_data' ->> 'archived' as archived,
	_airbyte_data::json->'_airbyte_data' ->> 'createdAt' as createdAt,
	_airbyte_data::json->'_airbyte_data' ->> 'updatedAt' as updatedAt,
	_airbyte_data::json->'_airbyte_data' ->> 'properties' as properties
from {{ ref('stg_raw_deals') }} 