class JobCleanupJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "Sending email..."
      debugger
      JobMailer.with(
        job: args[0], 
        company: args[1], 
        candidates: args[2] 
      ).job_email.deliver_later

    puts "Email sent."
  end
end
