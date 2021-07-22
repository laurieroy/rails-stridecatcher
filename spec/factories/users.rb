FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user-#{n}@example.com" }

    # first_name { "Test" }
		# last_name  { "Tester" }	
    password { "password" }
    password_confirmation { "password" }
    # time_zone { "Central Time (US & Canada)" }
    confirmed_at { Time.zone.now }
  end
end





