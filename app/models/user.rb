class User < ApplicationRecord
  has_many :events, foreign_key: 'event_id', class_name: "Event"
end
