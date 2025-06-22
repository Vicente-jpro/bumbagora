class AddProvinceIdToUser < ActiveRecord::Migration[7.2]
  def change
    add_reference :users, :province, null: false
  end
end
