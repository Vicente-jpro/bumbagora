class Category < ApplicationRecord
    has_many :jobs
    def name_with_initial
        "#{name}"
      end
end
