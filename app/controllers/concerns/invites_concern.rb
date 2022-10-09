module InviteConcern
  extend ActiveSupport::Concern

  	def set_message(room)
  	  @invite ||= Invite.find_by_room(set_room)
  	  @invite
  	end

end