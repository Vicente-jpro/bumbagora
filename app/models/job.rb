class Job < ApplicationRecord

  has_rich_text :content

  belongs_to :category
  belongs_to :user

  has_many :users_jobs, dependent: :destroy
  has_many :users, through: :users_jobs

  validates_presence_of :title, :type_job, :content

  enum type_job: {Remota: "Remota", Presencial: "Presencial", Hibrida: "Híbrida"}

  before_create :clean_empty_space
 
  scope :find_jobs_by_title, ->(job) {
    includes(:users, :category, :users_jobs)
    .where('LOWER(title) LIKE ?', "%#{job.downcase}%")
    .order(id: :desc) if job.present?
  }

  
  scope :find_jobs_by_user_owner, ->(user) {
    includes(:users, :category, :users_jobs)
    where(user_id: user.id)
    .order(id: :desc)
  }

  scope :find_jobs_by_id_greater_than, ->(job) { where('id <= ? ',job.id).order(id: :desc) }
  
  scope :find_jobs_by_category_id, ->(category_id) { 
    includes(:users, :category, :users_jobs)
    .where('category_id = ?', category_id.to_i)
    .order(id: :desc) 
  }


  scope :find_jobs_ordered_by_id_desc, -> { 
      includes(:users, :category, :users_jobs)
      .order(id: :desc) 
  }

  scope :find_job_by_id, ->(job_params) { where(id: job_params) }
  
  private 
    def clean_empty_space
      self.title = title.strip             
      puts "#############empty space cleaned"
    end
end
