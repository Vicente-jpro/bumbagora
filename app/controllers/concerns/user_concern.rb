module UserConcern
	extend ActiveSupport::Concern

	def user_is_a_company_or_admim?(current_user)
	  current_user.Empresa? or current_user.Admin?
	end
end