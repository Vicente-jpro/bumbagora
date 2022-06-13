class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_one_attached :image, dependent: :destroy do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  has_one_attached :document, dependent: :destroy

  has_many :users_jobs, dependent: :destroy
  has_many :jobs, through: :users_jobs
  belongs_to :country

  has_many :jobs, dependent: :destroy
  
  validates_presence_of :country, :username

  # validates :image, content_type: ['image/png', 'image/jpeg'],
  #                   dimension: { width: { min: 100, max: 350 },
  #                   height: { min: 100, max: 350 }, 
  #                   message: 'A imagens deve ter uma altura e um cumprimento de 350x350 ' }
                    

  enum type_subscription: {Candidate: "Candidate", Company: "Company"}

  scope :find_by_id, ->(user) { where(id: user.id)}



end