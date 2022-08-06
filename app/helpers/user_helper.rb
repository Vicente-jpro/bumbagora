module UserHelper 
	def display_user_image(user)
	  image_tag(user.image, class:"index-image my-3") if user.image.attached?
	end

	def is_admin?(job)
	  if user_signed_in?
	  	user = User.find_by(id: current_user.id)
	  		
	  	return user.type_subscription == "Admin"
	  end
	  return false
	end
end