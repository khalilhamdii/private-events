require 'rails_helper'

RSpec.describe "EventAttendences", type: :request do
  let(:attendee) { EventAttendence.reflect_on_association(:attendee).macro }
  let(:attended_event) { EventAttendence.reflect_on_association(:attended_event).macro }

  it 'checks if association is correct' do
    expect(attendee).to eq(:belongs_to)
  end

  it 'checks if association is correct' do
    expect(attended_event).to eq(:belongs_to)
  end
end
