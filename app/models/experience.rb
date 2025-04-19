class Experience < ApplicationRecord
  belongs_to :user
  has_rich_text :description
  validates_presence_of :start_date, :company_name, :profission, :end_date, :description
 
end
