module Invite
 class User
 	attr_accessor :room

 	def initialize(room)
 	  @room = room
 	end

 	def name
 	  @room
 	end

 	def email
 	  @room
 	end

 end
end




 candidate = Invite::User.new("Vicente Simãoooo")

 puts candidate.name



# module Company
#  class Candidate
#  	attr_accessor :name
#  	def initialize(name)
#  		@name = name
#  	end

#  	def get_name
#  	 @name
#  	end
#  end
# end
