module JobsHelper
    def is_the_owner_of_the_job?(job)
       (user_signed_in?) and (job.user_id == current_user.id)
    end

    def is_jobs_controller?
      controller.controller_name == "jobs"
    end


     def get_user_by_job(job)
       return User.find(job.user_id)
     end

     def truncated_html(text_with_html)
      truncate_html(text_with_html.to_s, length: 100 )
    
     end


     def reduce_the_duration_of_the_job(job)
       job.number_days -= 1
       job.updated_at = Time.now
       
       job.update!(job.attributes)
       
     end

     def number_of_days_is_zero?(job)
       job.number_days == 0
     end

     def delete_job_automatically(job)
       if number_of_days_is_zero?(job)
         job.delete!(job) 
         redirect_to jobs_path
       elsif !date_initial_is_equal_to_date_final?(job)
        reduce_the_duration_of_the_job(job)
       end
     end

     def date_initial_is_equal_to_date_final?(job)
        date_initial = (job.updated_at).to_s[0..9]
        date_final = (Time.now).to_s[0..9]
        
        return date_initial == date_final 
     end


end
