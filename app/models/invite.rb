class Invite < ApplicationRecord
  belongs_to :room
  belongs_to :user

  scope :find_by_rooms_candidate, -> (user) { where(room_id: room.id) }
  scope :find_by_room, -> (room) { find_by(room_id: room.id) }
  scope :find_by_candidate, -> (user) { find_by(user_id: user.id) }
  scope :find_company_room, -> (room) { find_by(room_id: room.id).room }
  scope :find_candidate_with_invite_closed, ->(user) { find_by(user_id: user.id, opened: false) }
  scope :find_invites_candidate, -> (user) { where(user_id: user.id)}

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
