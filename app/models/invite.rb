class Invite < ApplicationRecord
  belongs_to :room
  belongs_to :user

  def self.find_by_room(room) 
    find_by(room_id: room.id)
  end

  def self.find_company_room(room)
    company = find_by(room_id: room.id)
    company.room
  end

  def self.find_company_messages_with_room(room)
   room = find_company_room(room)
   messages = Message.find_sent(room.user)
   messages
  end

  def self.find_candidate_messages_with_room(room)
   invite = find_by_room(room)
   messages = Message.find_sent(invite.user)
   messages
  end

end
