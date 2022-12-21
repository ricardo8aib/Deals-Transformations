with first_replacement as (
	select note_id, properties::json->>'hs_body_preview' as context, replace(deal, '[', '') as deal
	from {{ ref('only_notes') }} ),
second_replacement as (
	select note_id, context, replace(deal, ']', '') as deal
	from first_replacement),
third_replacement as (
	select note_id, context, replace(deal, '"', '') as deal
	from second_replacement)
select note_id, context, unnest(string_to_array(deal, ',')) as deal
from third_replacement