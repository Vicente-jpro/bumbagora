class UsersJobsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_job, only: %i[ apply candidates destroy]
    rescue_from ActiveRecord::RecordNotFound, with: :invalid_user_job

    include JobsConcern
    include JobsViewsConcern

    def index 
      @user = current_user
      @user.jobs.find_jobs_ordered_by_id_desc.page(params[:page]).per(8)
      @page_name_index = page_name("index")
    end

   # POST /users_jobs/:id/apply
   def apply 
    if is_creator?(@job)
      flash[:alert] = "Não podes se registar na sua vaga."
    elsif is_registed?(@job)
      flash[:alert] = "Já estás registrado á vaga #{@job.title}."
    else
      user_job_registration(@job)
      flash[:notice] = "Subscrição feita com sucesso para vaga #{@job.title}" 
  
      @job.applayers += 1
      debugger
      @job.update(@job.attributes)
      
  
      company_id = @job.user_id
      NotificationMailer.candidate_after_apply(current_user.id, @job.id, company_id).deliver_later

      NotificationMailer.notify_company(@job.user_id, @job.id).deliver_later
  
    end  
    @jobs ||= Job.find_jobs_by_id_greater_than(@job).page(params[:page]).per(8)
    render "jobs/index", job: @jobs 
   end

   # GET /users_jobs/:id/candidates
   def candidates
     @candidates = @job
     @room = Room.new
   end

   # GET 
   # Destroy candidate registration to a job
   def destroy 
  
     user_job = UsersJob.find_user_registed_to_a_job(@job, current_user)
     UsersJob.delete(user_job)

     @job.applayers -= 1
     @job.update!(@job.attributes)
   
     respond_to do |format|
      format.html { redirect_to jobs_url, notice: "Candidatura eliminada com sucesso." }
      format.json { head :no_content }
    end

    
   end

   # GET /users_jobs/:user_id/show
   def show 
    @candidate = set_user
    
   end

   private 
    def invalid_user_job
      logger.error "Attempt to access invalid house #{params[:id]}"
      redirect_to jobs_url, info: "Este registro de emprego está em valido."
    end

    def set_job 
      @job = Job.find(params[:id])
    end

    def set_user
      User.find(params[:id])
    end
end

#Seleciona todos os candidatos que se inscreveram em uma determinada vaga que pertence a uma determinada 
#empresa