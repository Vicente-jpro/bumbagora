class BackListsController < ApplicationController
   rescue_from ActiveRecord::RecordNotFound, with: :invalid_job


  def index 
    
  end
  
  def jobs 
    @jobs = Job.find_by_claimed(true).page(params[:page]).per(8)
  end 

  def publicities
    
  end

  def job_complaint   
    job = Job.find(params[:id_job])
    
    if job
      JobComplaint.find_or_create_by!(job_id: job.id)
      job.claimed = true 
      job.save
      # Send an email to addmin this claimed
       
      redirect_to jobs_url, 
      info: "Obrigado por notificar-nos. Vamos verificar o tipo de conteúdo postado."
    end

  end 

  def publicity_complaint
    id_publicity 
  end

  def invalid_job
    logger.error "Attempt to access invalid job #{params[:id_job]}"
    redirect_to jobs_url, info: "Post invalido."
  end
end
