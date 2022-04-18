module JobsConcern 
    extend ActiveSupport::Concern
    def user_job_registration(job)
      @job = job
      @job.users << current_user
    end

    def is_creator?(job)
        @job.user_id == current_user.id
    end
end