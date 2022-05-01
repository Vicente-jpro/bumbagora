class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [200, 200]
  end
  has_one_attached :document

  has_many :users_jobs
  has_many :jobs, through: :users_jobs, dependent: :destroy
  has_one :country
  
  enum type_subscription: {Candidate: "Candidate", Company: "Company"}

  scope :find_by_id, ->(user) { where(id: user.id)}

end
