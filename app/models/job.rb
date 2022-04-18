class Job < ApplicationRecord
  belongs_to :category

  has_many :users_jobs
  has_many :users, through: :users_jobs

  enum type_job: {Remote: "Remote", Presencial: "Presencial"}
  scope :find_jobs_by_category, ->(category_id) { where('category_id = ?', category_id )}
  scope :find_jobs_by_id_greater_than, ->(job) { where('id > ?',job.id) }
  
end
