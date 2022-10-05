module UsersJobsHelper
    def user_have_applied?(job)
        user_signed_in? and  job.users.find_by_id(current_user).any?
    end

     def exist_any_candidates?(job)
        candidates = UsersJob.find_users_registed_to_this_job(job).first
        return !candidates.nil?
     end
end
