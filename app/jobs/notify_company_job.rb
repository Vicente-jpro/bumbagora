class NotifyCompanyJob < ApplicationJob
  queue_as :mailers

  def perform(company_id, job_id)
    NotificationMailer.notify_company(company_id, job_id).deliver_now
  end
end
