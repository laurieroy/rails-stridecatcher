require "rails_helper"

RSpec.describe "User Logins", type: :system do
  scenario "with valid credentials" do	
    visit root_path

    click_link "Sign In"

		expect(page).to	have_current_path(new_user_session_path, wait: 3)

    @confirmed_user = FactoryBot.create(:confirmed_user)

    fill_in "Email", with: @confirmed_user.email
    fill_in "Password", with: @confirmed_user.password

    click_button "Log in"
      
    expect(page).to have_content("Signed in successfully")
      # expect(page).to have_current_path(authenticated_root_path)
  end
end