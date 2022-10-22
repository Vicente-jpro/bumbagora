module RoomsHelper
	def is_rooms_controller?
	  controller.controller_name == "rooms"
	end
end
