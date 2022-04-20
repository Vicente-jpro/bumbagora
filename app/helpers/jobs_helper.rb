module JobsHelper
    def is_the_owner_of_the_job?(job)
      (user_signed_in?) and (job.user_id == current_user.id)
    end
end
