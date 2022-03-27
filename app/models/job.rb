class Job < ApplicationRecord
  belongs_to :category

  has_many :users_jobs
  has_many :users, through: :users_jobs

  enum type_job: {Remote: "Remote", Presencial: "Presencial"}
end
