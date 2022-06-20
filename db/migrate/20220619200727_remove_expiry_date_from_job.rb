class RemoveExpiryDateFromJob < ActiveRecord::Migration[7.0]
  def change
    remove_column :jobs, :expiry_date, :string
  end
end
