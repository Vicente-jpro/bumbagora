class UsersJob < ApplicationRecord
  belongs_to :user
  belongs_to :job

  enum type_subscription: {Creator: "Creator", Candidate: "Candidate"}

  scope :find_user_registed_to_a_job, ->(job, user) { where( "job_id = #{job.id} and user_id = #{user.id}" ) }
  scope :find_users_registed_to_this_job, ->(job) {where("job_id = #{job.id}")}
end
