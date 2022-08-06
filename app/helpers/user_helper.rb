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

	def type_registration?(user_type_subscriptions)
	  types = Array.new

	  user_type_subscriptions.each do |type|
	  	types << type
	  end 	  
	  types.delete_at(2)

	  return types
	end
end