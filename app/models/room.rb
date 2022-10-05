class Room < ApplicationRecord
  attr_accessor :candidate_id
  
  belongs_to :user
  has_many :messages
end
