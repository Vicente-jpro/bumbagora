module MessagesHelper
  def message_color(message)
  	return "teal-lighten-5" if message.user.Admin? or message.user.Empresa?
  	"indigo-lighten-5"
  end
end






