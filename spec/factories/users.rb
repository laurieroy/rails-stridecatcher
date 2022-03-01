FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user-#{n}@example.com" }

    # first_name { "Test" }
		# last_name  { "Tester" }	
    password { "password" }
    password_confirmation { "password" }
    # time_zone { "Central Time (US & Canada)" }
    # confirmed_at { Time.zone.now }
  end

  factory :confirmed_user, class: User do
    email { "confirmed_user@example.com" }
    # first_name { "Confirmed" }
		# last_name  { "User" }	
    password { "password" }
    password_confirmation { "password" }
    # time_zone { "Central Time (US & Canada)" }
    confirmed_at { Time.zone.now }
  end
end





