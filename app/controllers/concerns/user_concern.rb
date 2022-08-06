module UserConcern
	extend ActiveSupport::Concern

	def user_is_a_company_or_admim?(current_user)
	  current_user.type_subscription == "Empresa" or current_user.type_subscription = "Admin"
	end
end