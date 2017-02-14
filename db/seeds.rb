150.times do 
	University.create(
		name: Faker::University.name,
		principal_first_name: Faker::Name.first_name,
		pricinipal_last_name: Faker::Name.last_name
		)
end