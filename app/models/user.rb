class User < ApplicationRecord
  has_many :events
  has_many :rsvps
  
  acts_as_voter
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end


