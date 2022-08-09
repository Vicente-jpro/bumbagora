class Category < ApplicationRecord
    has_many :jobs
    has_many :users

    def name_with_initial
        "#{name}"
    end
end
