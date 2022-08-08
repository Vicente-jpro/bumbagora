class JobMailer < ApplicationMailer
  default from: 'vicente.simao@bumbagora.com'

  def invitation
   @candidate = params[:user_candidate]
   @job = params[:job]
   @company = params[:user_company]
   @category_id = params[:category_id]

   @url = "http://127.0.0.1:3000/jobs/search_with_category?category_id=#{@category_id}"
   #@url  = 'www.bumbagora.com'
   message = "A empresa #{company.username} convidou-te para fazer parte de uma entrevista na vaga de #{@job.title}. Boa sorte. Clica neste link #{@url}"
   mail(
    to: @candidate.email, 
    subject: "Olá #{@candidate.username}! #{message}" )
  end
end