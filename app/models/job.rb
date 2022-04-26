class Job < ApplicationRecord

  has_rich_text :description

  belongs_to :category

  has_many :users_jobs
  has_many :users, through: :users_jobs

  enum type_job: {Remote: "Remote", Presencial: "Presencial"}
  scope :find_jobs_by_title_or_category_name, ->(job) {
    where('LOWER(title) LIKE ?', "%#{job.downcase}%")
    .order(id: :desc) if job.present?
  }
  scope :find_jobs_by_id_greater_than, ->(job) { where('id <= ? ',job.id).order(id: :desc) }
  scope :find_jobs_ordered_by_id_desc, -> { order(id: :desc) }
end
