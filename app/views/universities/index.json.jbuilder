json.array! @universities.each do |u|
	json.name u.name
	json.principal_firstname u.principal_first_name
	json.principal_lastname u.pricinipal_last_name

end