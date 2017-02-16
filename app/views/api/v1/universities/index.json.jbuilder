json.array! @universities.each do |university|
	json.id university.id
	json.name university.name
	json.principal_first_name university.principal_first_name
	json.principal_last_name university.pricinipal_last_name
end