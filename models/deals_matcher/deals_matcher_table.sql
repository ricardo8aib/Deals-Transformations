select
	dp.id,
	dp.dealname,
	dp.role_description,
	dp.closedate,
	dp.dealstage,
	dp.department,
	dp.hs_priority,
	dp.hs_next_step,
	np.context
from {{ ref('deals_properties') }}  as dp
left join {{ ref('notes_properties') }}  np
on dp.id = np.deal