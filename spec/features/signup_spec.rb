require 'rails_helper'

RSpec.feature "Signups", type: :feature do
  scenario 'can sign up a new user' do
    visit 'signup'
    fill_in :user_name, with: "Khalil hamdi"
    fill_in :user_email, with: "khaalil.hamdi@gmail.com"
    expect { click_button "Submit" }.to change(User, :count).by(1)
  end

  scenario 'can garant access to create a new event' do
    visit 'signup'
    fill_in :user_name, with: "Khalil hamdi"
    fill_in :user_email, with: "khaalil.hamdi@gmail.com"
    click_on 'Submit'
    visit 'home'
    expect(page).to have_content "Create a new event"
  end
end
