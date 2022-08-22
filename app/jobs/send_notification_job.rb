class SendNotificationJob < ApplicationJob
  queue_as :mailers

  def perform(job_id, candidate_id)
    # 'candidate_id' can be a 'user_id'
    NotificationMailer.new_job_created(job_id, candidate_id).deliver_now
  end
end
