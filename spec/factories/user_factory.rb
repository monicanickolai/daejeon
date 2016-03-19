FactoryGirl.define do

sequence(:email) { |n| "user#{n}@example.com"}
	factory :user do
		email 
		password "userpassword"
		first_name "Test"
		last_name "User"
		admin false
	end
	factory :admin, class: User do
		email 
		password "adminpassword"
		first_name "Admin"
		last_name "User"
		admin true
	end

end

