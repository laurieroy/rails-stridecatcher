require "rails_helper"

RSpec.describe "User Registrations", type: :system  do
	scenario "with valid credentials" do
		visit root_path

		click_link "Create an account"

		expect(page).to	have_current_path(new_user_registration_path, wait: 3)

		@user = build(:user)

		within("#new_user") do
			fill_in "Email", with: @user.email
			fill_in "Password", with: @user.password
			fill_in "Password confirmation", with: @user.password_confirmation

			click_button "Sign up"
		end

		expect(page).to have_content("A message with a confirmation link has been sent to your email address. Please follow the link to activate your account.")
				# expect {}.to change { User.count }.by(1)
			
		end
		

end