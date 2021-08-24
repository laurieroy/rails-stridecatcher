require "rails_helper"

RSpec.describe "UserLogins", type: :system do
  scenario "with valid credentials" do
		before do
			@confirmed_user = FactoryBot.create(:confirmed_user)
		
			login_as(@confirmed_user)
		end
	
		# and redirects to their todo items
    # it "logs the user in " do
      visit root_path
			click_link "Sign In"
			
      fill_in "Email", with: @confirmed_user.email
      fill_in "Password", with: @confirmed_user.password
      fill_in "Password confirmation", with: @confirmed_user.password_confirmation
      click_button "Log in"
      
      # expect(page).to have_content("My To Do Items")
      expect(page).to have_current_path(authenticated_root_path)
  end
end