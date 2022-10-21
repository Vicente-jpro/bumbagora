module InvitesHelper
  def find_and_count_candidate_messages_with_room(room)
    Invite.find_candidate_messages_with_room(room).count
  end

  # def find_company_messages_with_room(room)
  #   Invite.find_company_messages_with_room(room).count
  # end

  def find_and_count_company_messages_with_room(invites)
    invites.to_a.count
  end

  


  def candidate_has_invite?(user)
    Invite.find_candidate_with_invite_closed(current_user).present? 
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