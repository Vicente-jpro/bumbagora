class NotificationJob < ApplicationJob
  queue_as :mailers

  def perform(job_id)
    @job = Job.find_by(id: job_id)
    @candidates = User.find_by_category_id( @job.category_id )

    @candidates.each do |candidate| 
      SendNotificationJob.perform_later(job_id, candidate.id)
    end
  end
  
end
