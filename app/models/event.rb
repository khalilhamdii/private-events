class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: :creator_id

  has_many :event_attendences, foreign_key: :attended_event_id, class_name: "EventAttendence"
  has_many :attendees, through: :event_attendences
end
