module UserHelper 
	def display_user_image(user)
	  image_tag(user.image, class:"index-image my-3") if user.image.attached?
	end

	def display_user_image_profile(user)
	  image_tag(user.image, class: "profile-image") if user.image.attached?
	end

	def validate_uploaded_image_and_return_image_tag(image_blob, user)
		if image_blob[:filename] =~ /\.(png|jpg)\z/i
			return image_tag(current_user.image.variant(:thumb), class:"image-edit-profile")
		end
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
      return (user.Admin? or user.Empresa?)
  	end

	def type_registration?(user_type_subscriptions)
	  types = Array.new

	  user_type_subscriptions.each do |type|
	  	types << type
	  end 	  
	  types.delete_at(2)

	  return types
	end

	def is_device_controller?
	  if (controller.controller_name == "confirmations" or controller.controller_name == "passwords")
	  	return true
	  end
	  	
	  return (controller.controller_name == "registrations" or controller.controller_name == "sessions")
	end
end