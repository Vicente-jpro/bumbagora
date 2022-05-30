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
  has_many :jobs, through: :users_jobs, dependent: :destroy
  belongs_to :country

  validates_presence_of :country
  validates :image, blob: { content_type: ['image/png', 'image/jpg', 'image/jpeg'], size_range: 1..(2.megabytes) }
  #validates :document, blob: { content_type: :pdf, size_range: 1..(2.megabytes) }

  
  enum type_subscription: {Candidate: "Candidate", Company: "Company"}

  scope :find_by_id, ->(user) { where(id: user.id)}



end