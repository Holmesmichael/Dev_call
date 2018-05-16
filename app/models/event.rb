class Event < ApplicationRecord
    acts_as_votable
    geocoded_by :address
    belongs_to :user
    has_many :rsvps
    has_many :users, through: :rsvps

    ##mapping 
    after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

    reverse_geocoded_by :latitude, :longitude
    after_validation :reverse_geocode
    
    
    
end
