namespace :db do
	desc "Fill database with sample data "
	task populate: :environment do
		250.times do |n|
			company = Faker::Name.first_name
			description = Faker::Name.last_name
			number = Faker::Number.number(7)
			checkout = Faker::Business.credit_card_expiry_date
			checkin = Faker::Business.credit_card_expiry_date
   
 
		Key.create!(Company: company,
						Description: description,
						Number: number,
						Checkout: checkout,
						Checkin: checkin)
		end
	end
end