module RoomConcern 
   extend ActiveSupport::Concern

   def create_invite(room, candidate_id)
   	@invite = Invite.new({
          room: room,
          user_id: candidate_id,
          opened: false
        })
   	@invite.save!
   end
end

