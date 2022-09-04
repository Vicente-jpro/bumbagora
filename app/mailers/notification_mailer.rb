class NotificationMailer < ApplicationMailer

 def new_job_created(job_id, candidate_id)
   
   @job = Job.find_by(id: job_id)
   @user = User.find_by(id: candidate_id)
   
   @url = "http://127.0.0.1:3000/jobs/search_with_category?category_id=#{@job.category_id}"
   #@url  = 'www.bumbagora.com'
   message = "Nova vaga de #{@job.title}, foi postada no nosso site. Aproveita a oportunidade. Boa sorte. Clica neste link #{@url}"
  
   mail( to: @user.email, subject: "Olá Vicente #{message}"  )
   	
  end

  def notify_company(company_id, job_id)

   @company = User.find_by(id: company_id)
   @url = "http://127.0.0.1:3000/"
   #@url  = 'www.bumbagora.com'
   @job = Job.find_by(id: job_id)
   
   message = "Novo candidato para vaga de #{@job.title}."
  
   mail( to: @company.email, subject: "Olá Vicente #{message}"  )
  end


  def candidate_after_apply(candidate_id, job_id)

   @candidate = User.find_by(id: candidate_id)
   @url = "http://127.0.0.1:3000/"
   #@url  = 'www.bumbagora.com'
   @job = Job.find_by(id: job_id)
   
   message = "Novo candidato para vaga de #{@job.title}."
  
   mail( to: @candidate.email, subject: "Olá Vicente #{message}"  )

  end

end
