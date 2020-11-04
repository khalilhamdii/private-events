require 'rails_helper'

RSpec.feature 'CreateEvents', type: :feature do
  scenario 'can create a new event' do
    visit 'signup'
    fill_in :user_name, with: 'Khalil hamdi'
    fill_in :user_email, with: 'khaalil.hamdi@gmail.com'
    click_on 'Submit'
    visit 'home'
    fill_in :event_title, with: 'rspec event'
    select '2020', from: 'event_date_1i'
    select 'November', from: 'event_date_2i'
    select '1', from: 'event_date_3i'
    fill_in :event_description, with: 'Rspec description'
    click_on 'Create Event'
    visit 'home'
    expect(page).to have_content 'rspec event'
    expect(page).to have_content '2020-11-01'
    expect(page).to have_content 'Rspec description'
  end
end
