require 'rails_helper'

RSpec.feature "UserRegistrations", type: :feature do
	describe "signing up" do
		let!(:user) { FactoryBot.create(:user) }

		it "registers a new user" do
			visit new_user_registration_path

			assert_difference "User.count", 1 do
				fill_in "Email", with user.email
				fill_in "Password", with user.password
				fill_in "Password confirmation", with user.password_confirmation

				click_button "Sign up"
			end
		end
		
  end


	end
end