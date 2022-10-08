module UserHelper 
	def display_user_image(user)
	  image_tag(user.image, class:"index-image my-3") if user.image.attached?
	end

	def display_user_image_profile(user)
	  image_tag(user.image, class: "profile-image")
	end

	# Verify this method it's like unuseless
	def is_admin?(job)
	  if user_signed_in?
	  	user = User.find_by(id: current_user.id)
	  		
	  	return user.Admin?
	  end
	  return false
	end

	def user_is_admin_or_company?(user)
	 if user_signed_in?
    	return (user.Admin? or user.Empresa?)
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