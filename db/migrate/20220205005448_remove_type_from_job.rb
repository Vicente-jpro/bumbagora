class RemoveTypeFromJob < ActiveRecord::Migration[7.0]
  def change
    remove_column :jobs, :type, :string
  end
end
