class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :email, presence: true, uniqueness: true

  has_many :created_events, foreign_key: :creator_id, class_name: 'Event'

  has_many :event_attendences, foreign_key: :attendee_id, class_name: "EventAttendence"
  has_many :attended_events, through: :event_attendences
end
