class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :email, presence: true, uniqueness: true
  has_many :created_events, foreign_key: :creator_id, class_name: "Event"
end
