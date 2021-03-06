require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let(:user) { User.create(name: 'Daniel Ronan', email: 'dan@email.com') }
  let(:invalid_user) { User.new(name: 'Ti', email: 'ty@email.com') }
  let(:events_created) { User.reflect_on_association(:created_events).macro }
  let(:events_attended) { User.reflect_on_association(:attended_events).macro }
  let(:event_attendences_test) { User.reflect_on_association(:event_attendences).macro }

  it 'checks if creating a user is valid' do
    expect(user).to be_valid
  end

  it 'checks if user name with 2 letters is not valid' do
    expect(invalid_user).not_to be_valid
  end

  it 'checks if association is correct' do
    expect(events_created).to eq(:has_many)
  end

  it 'checks if association is correct' do
    expect(events_attended).to eq(:has_many)
  end

  it 'checks if association is correct' do
    expect(event_attendences_test).to eq(:has_many)
  end

  it 'checks if the name is correct' do
    assert_equal 'Daniel Ronan', user.name
  end

  it 'checks if the email is correct' do
    assert_equal 'dan@email.com', user.email
  end
end
