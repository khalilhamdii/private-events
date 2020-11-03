require 'rails_helper'

RSpec.describe "Events", type: :request do
  let(:attendees) { Event.reflect_on_association(:attendees).macro }
  let(:creator) { Event.reflect_on_association(:creator).macro }
  let(:event_attendees) { Event.reflect_on_association(:event_attendences).macro }

    it "checks if association is correct" do
      expect(attendees).to eq(:has_many)
    end

    it "checks if association is correct" do
      expect(creator).to eq(:belongs_to)
    end

    it "checks if association is correct" do
      expect(event_attendees).to eq(:has_many)
    end
end
