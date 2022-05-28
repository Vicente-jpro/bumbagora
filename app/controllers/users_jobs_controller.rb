class UsersJobsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_job, only: %i[ apply candidates ]
    include JobsConcern

    def index 
      @user = current_user
      @user.jobs.find_jobs_ordered_by_id_desc.page(params[:page]).per(8)
    end

   # POST /users_jobs/:id/apply
   def apply 
    if is_creator?(@job)
      flash[:alert] = "You can not register to your own job."
    elsif is_registed?(@job)
      flash[:alert] = "You have already registered on this job."
    else
      user_job_registration(@job)
      flash[:notice] = "Subscrição feita com sucesso para vaga #{@job.title}" 
    end  
    @jobs ||= Job.find_jobs_by_id_greater_than(@job).page(params[:page]).per(8)
    render "jobs/index", job: @jobs 

   end

   # GET /users_jobs/:id/candidates
   def candidates
     @candidates = @job
   end

   # GET /users_jobs/:user_id/show
   def show 
   end

   private 
    def set_job 
      @job = Job.find(params[:id])
    end
end