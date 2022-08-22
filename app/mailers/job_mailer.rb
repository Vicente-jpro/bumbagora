class JobMailer < ApplicationMailer
  default to: -> {User.pluck(:email)}, 
          from: 'vicente.simao@bumbagora.com'

  def job_email
   
   @job = params[:job]
   @company = params[:company]
   @candidates = params[:candidates]
   
   @url = "http://127.0.0.1:3000/jobs/search_with_category?category_id=#{@job.category_id}"
   #@url  = 'www.bumbagora.com'
   message = "A empresa #{@company.username} convidou-te para dar uma olhada na vaga de #{@job.title}. Boa sorte. Clica neste link #{@url}"
  
	   mail(
	   # subject: "Olá #{candidate.username}! #{message}" 
     subject: "Olá Vicente #{message}" 
	   )
   	
  end
end