module MessagesHelper

  def message_color(user)
  	return "teal-lighten-5" if user_is_admin_or_company?(user)
  	"indigo-lighten-5"
  end

  def text_direction(user)
    return "justify-content-start"  if user_is_admin_or_company?(user)
    "justify-content-end"
  end

  def user_is_admin_or_company?(user)
    (user.Admin? or user.Empresa?)
  end
end
