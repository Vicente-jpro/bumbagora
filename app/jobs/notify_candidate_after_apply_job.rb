class NotifyCandidateAfterApplyJob < ApplicationJob
  queue_as :mailers

  def perform(candidate_id, job_id)
    NotificationMailer.candidate_after_apply(candidate_id, job_id).deliver_now
  end
end