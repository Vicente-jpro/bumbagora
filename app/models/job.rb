class Job < ApplicationRecord
  belongs_to :category
  belongs_to :user
  enum type_job: {Remote: "Remote", Presencial: "Presencial"}
end
