class AddNumberDaysToJob < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :number_days, :integer, default: 40
  end
end
