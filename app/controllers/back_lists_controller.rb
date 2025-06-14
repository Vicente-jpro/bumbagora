class BackListsController < ApplicationController
  before_action :set_job, only: %i[ job_complaint job_create update destroy ]
  before_action :authenticate_user!
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_job

  def job_create
    BlackList.save_email_user(@job.user.email) 

    debugger
    black_list.save
    
  end
  
  def publicity_create
    black_list = BlackList.new 
    black_list.email = job_params[:email] 
    black_list.save
    
  end


  def jobs 
    @jobs = Job.find_by_claimed(true).page(params[:page]).per(8)
  end 

  def publicities
    
  end

  def job_complaint   
    
    if @job
      JobComplaint.find_or_create_by!(job_id: @job.id)
      @job.claimed = true 
      @job.save
      # Send an email to addmin this claimed
       
      redirect_to jobs_url, 
      info: "Obrigado por notificar-nos. Vamos verificar o tipo de conteúdo postado."
    end

  end 

  def publicity_complaint
    id_publicity 
  end



  def job_params
    params.require(:back_list).permit(:user)
  end

  private
    def set_job 
      @job = Job.find(params[:id_job])
    end
    
    def invalid_job
      logger.error "Attempt to access invalid job #{params[:id_job]}"
      redirect_to jobs_url, info: "Post invalido."
    end
end
