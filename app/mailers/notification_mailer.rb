class NotificationMailer < ApplicationMailer

 def new_job_created(job_id, candidate_id)
   
   @job = Job.find_by(id: job_id)
   @user = User.find_by(id: candidate_id)
   
   @url = "http://127.0.0.1:3000/jobs/search_with_category?category_id=#{@job.category_id}"
   #@url  = 'www.bumbagora.com'
   message = "Nova vaga de #{@job.title}, foi postada no nosso site. Aproveita a oportunidade. Boa sorte. Clica neste link #{@url}"
  
   mail( to: @user.email, subject: "Olá Vicente #{message}"  )
   	
  end


end