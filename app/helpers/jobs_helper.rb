module JobsHelper
    def is_the_owner_of_the_job?(job)
      (user_signed_in?) and (job.user_id == current_user.id)
    end

     def time_ago_in_days?(job)
       if time_array_lenght(job) and (user_signed_in?)
         return job_in_date_of_spired?(job)
       end
       return false
     end 
    
     def job_in_date_of_spired?(job)
      if (time_ago_in_words(job.created_at).split.first.to_i > 20) 
        if (time_ago_in_words(job.created_at).split.last == "days")
          return true
        end 
      end
     return false
     end


     def time_array_lenght(job)
       time_ago_in_words(job.created_at).split.length == 2
     end

     def day_is_thirty(job)
       time_ago_in_words(job.created_at) == "30 days"
     end


     def get_user_by_job(job)
       return User.find(job.user_id)
     end

     # def replace_html_content(job)
     #  text = job.description.to_s
     #  begin_content = text.gsub(/[<=>"]/, '')
     #  taking_div = begin_content.sub(/div classtrix-content div/, '#')
     #  end_content = taking_div
      
     #  return end_content
     # end

     # def truncate_text(str) 
     #   return truncate("")
     # end
end
