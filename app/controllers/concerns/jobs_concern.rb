module JobsConcern 
    extend ActiveSupport::Concern
    def save_job_into_user_creater(job)
        @job = Job.last
        @job.users << current_user
    end
end