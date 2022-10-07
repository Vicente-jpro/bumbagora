module InvitesHelper
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