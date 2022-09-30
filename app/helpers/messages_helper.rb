module MessagesHelper

  def message_color(message)
  	return "teal-lighten-5" if user_is_admin_or_company?(message)
  	"indigo-lighten-5"
  end

  def text_direction(message)
    return "justify-content-start"  if user_is_admin_or_company?(message)
    "justify-content-end"
  end

  private
    def user_is_admin_or_company?(message)
      (message.user.Admin? or message.user.Empresa?)
    end
end
