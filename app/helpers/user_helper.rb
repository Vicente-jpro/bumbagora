module UserHelper 
	def display_user_image(user)
	  image_tag(user.image, class:"index-image my-3") if user.image.attached?
	end
end