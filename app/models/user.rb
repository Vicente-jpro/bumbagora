class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 
  has_many :users_jobs
  has_many :jobs, through: :users_jobs, dependent: :destroy
  
  enum type_subscription: {Candidate: "Candidate", Company: "Company"}

  scope :find_by_id, ->(user) { where(id: user.id)}
  def country
    super.iso_short_name
  end

end
