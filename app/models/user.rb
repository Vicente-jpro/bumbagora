class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable #, :validatable, :confirmable

  has_one_attached :image, dependent: :destroy do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  has_one_attached :document, dependent: :destroy

  has_many :users_jobs, dependent: :destroy
  has_many :jobs, through: :users_jobs
  
  #has_many :jobs, dependent: :destroy
  
  has_many :invites, dependent: :destroy
  has_many :rooms, dependent: :destroy

  has_many :experiences, dependent: :destroy
 
  has_many :messages, dependent: :destroy

  belongs_to :country
  belongs_to :category

  
  
  validates_presence_of :country, :username
  #validates :category, acceptance: { message: 'Selecione uma Profissão/Formação.' }
  
    
  validates :image, content_type:  ['image/png', 'image/jpeg'],
                    size: { less_than: 4.megabytes } 
  validates :document, content_type: ['application/pdf'], size: { less_than: 200.kilobyte } 
                    

  enum type_subscription: {Candidato: "Candidato", Empresa: "Empresa", Admin: "Admin19793"}

  scope :find_by_id, ->(user) { where(id: user.id)}
  scope :find_by_category_id, ->(category_id) { where(category_id: category_id ) }
  



end