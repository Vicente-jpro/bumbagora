class JobMailer < ApplicationMailer
	default from: 'vicente.simao@bumbagora.com'

	def invitation
	 @candidate = params[:user_candidate]
	 @job = params[:job]
	 @company = params[:user_company]

	 @url  = 'www.bumbagora.com'
	 message = "A empresa #{company.username} convidou-te para fazer parte de uma entrevista na vaga de #{@job.title}. Boa sorte."
	 mail(to: @candidate.email, subject: "Olá #{@candidate.username}! #{message}" )
	end
end
