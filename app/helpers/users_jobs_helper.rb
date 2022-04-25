module UsersJobsHelper
    def user_have_applied?(job)
        user_signed_in? and  job.users.find_by_id(current_user).any?
    end
end
