class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  after_create_commit -> { broadcast_append_to room }
  after_destroy_commit -> { broadcast_remove_to room }

  def self.find_received_candidate(user)
    where(user_id: user.id, open: false)
  end

  def self.find_sent(user)
    where(user_id: user.id, open: false)
  end
  def self.find_received_company(room)
    where(user_id: room.user_id, open: false)
  end

end
