class DashboadController < ApplicationController
  def index
    @number_of_jobs_claimed = Job.find_by_claimed_and_count(true)
  end
end
