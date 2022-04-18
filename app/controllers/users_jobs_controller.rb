class UsersJobsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_job, only: %i[ apply ]
    include JobsConcern

    def index 
      @user = current_user
      @user.jobs.order(id: :desc)
    end

   # POST /users_jobs/:id/apply
   def apply 
    if is_creator?(@job)
      flash[:alert] = "You can not register to your own job."
    else
      user_job_registration(@job)
      flash[:notice] = "Subscrição feita com sucesso para vaga #{@job.title}" 
    end  
    @jobs ||= Job.find_jobs_by_id_greater_than(@job)
    render "jobs/index", job: @jobs 

   end

   private 
    def set_job 
      @job = Job.find(params[:id])
    end
end