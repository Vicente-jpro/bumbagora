module MessagesHelper
 include UserHelper

  def message_color(user)
  	return "teal-lighten-5" if user_is_admin_or_company?(user)
  	"indigo-lighten-5"
  end

  def text_direction(user)
    return "justify-content-start" if user_is_admin_or_company?(user)
    "justify-content-end"
  end


  def chat_image(user)
    return display_user_image_profile(user) if user_is_admin_or_company?(user)
    display_user_image_profile(user)
  end

end
