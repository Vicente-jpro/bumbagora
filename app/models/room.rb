class Room < ApplicationRecord
  attr_accessor :candidate_id
  
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_one :invite, dependent: :destroy

  scope :find_rooms_by_user, ->(room) { where(user_id: room.user_id)}
end
