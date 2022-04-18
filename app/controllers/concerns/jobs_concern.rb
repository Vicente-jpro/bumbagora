module JobsConcern 
    extend ActiveSupport::Concern
    def user_job_registration(job)
      job.users << current_user
    end

    def is_creator?(job)
      job.user_id == current_user.id
    end

    def is_registed?(job)
      @user_jobs = job.users.where(id: current_user.id)
      if @user_jobs.any?
        return true
      else
        return false
      end
    end
end