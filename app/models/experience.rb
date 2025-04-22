class Experience < ApplicationRecord
  belongs_to :user
  validates_presence_of :start_date, :company_name, :profission, :end_date, :description
 
end
