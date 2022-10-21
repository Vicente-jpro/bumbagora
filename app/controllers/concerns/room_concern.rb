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

   def room_belongs_to_company?(user, room)
     (user.id == room.user_id)
   end
end

