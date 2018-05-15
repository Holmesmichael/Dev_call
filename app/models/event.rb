class Event < ApplicationRecord
    acts_as_votable
    belongs_to :user
    has_many :rsvps
    has_many :users, through: :rsvps
    
end
