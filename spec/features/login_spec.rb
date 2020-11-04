require 'rails_helper'

RSpec.feature 'Login', type: :feature do
  scenario 'can enter an email and login to the events page' do
    visit 'signup'
    fill_in :user_name, with: 'Khalil hamdi'
    fill_in :user_email, with: 'khaalil.hamdi@gmail.com'
    click_on 'Submit'
    User.create(name: 'Khalil Hamdi', email: 'Khaalil.hamdi@gmail.com')
    visit 'login'
    fill_in :email, with: 'khaalil.hamdi@gmail.com'
    click_on 'Submit'
    visit 'home'
    expect(page).to have_content 'Khalil hamdi'
  end

  scenario "can't accept not existing user" do
    visit 'login'
    fill_in :email, with: 'anything@gmail.com'
    click_on 'Submit'
    expect(page).to have_content 'Email is invalid'
  end
end
