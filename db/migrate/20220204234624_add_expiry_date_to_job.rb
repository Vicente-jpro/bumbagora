class AddExpiryDateToJob < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :expiry_date, :date
  end
end
