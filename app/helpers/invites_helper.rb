module InvitesHelper
  def find_candidate_messages_with_room(room)
    Invite.find_candidate_messages_with_room(room).count
  end

  def find_company_messages_with_room(room)
    Invite.find_company_messages_with_room(room).count
  end


 class User
   attr_accessor :room

   def initialize(room)
   	@room ||= Invite.find_by_room(room)
   end

   def username
   	@room.user.username
   end

   def email
    @room.user.email
   end

 end 
end