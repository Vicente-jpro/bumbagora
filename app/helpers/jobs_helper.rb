module JobsHelper
    def is_the_owner_of_the_job?(job)
      (user_signed_in?) and (job.user_id == current_user.id)
    end

     def time_ago_in_days(job)
       if time_array_lenght(job)
         time_ago_in_words(job.created_at).split.first > 20
         return true
       end
       return false
     end 
    

     def time_array_lenght(job)
       time_ago_in_words(job.created_at).split.length == 2
     end

     def day_is_thirty(job)
       time_ago_in_words(job.created_at) == "30 days"
     end
end
