class Invite < ApplicationRecord
  belongs_to :room
  belongs_to :user

  def self.find_by_room(room) 
    find_by(room_id: room.id)
  end
end
