class UsersJob < ApplicationRecord
  belongs_to :user
  belongs_to :job

  enum type_subscription: {Creator: "Creator", Candidate: "Candidate"}
end
