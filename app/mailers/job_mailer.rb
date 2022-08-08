class JobMailer < ApplicationMailer
  default from: 'vicente.simao@bumbagora.com'

  def job_email
   
   @job = params[:job]
   @company = params[:company]
   @candidate = User.find_by(id: @job.user_id)
   debugger

   @url = "http://127.0.0.1:3000/jobs/search_with_category?category_id=#{@job.category_id}"
   #@url  = 'www.bumbagora.com'
   message = "A empresa #{@company.username} convidou-te para fazer parte de uma entrevista na vaga de #{@job.title}. Boa sorte. Clica neste link #{@url}"
   mail(
    to: @candidate.email, 
    subject: "Olá #{@candidate.username}! #{message}" )
  end
end