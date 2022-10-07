class Room < ApplicationRecord
  attr_accessor :candidate_id
  
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_one :invite, dependent: :destroy
end
