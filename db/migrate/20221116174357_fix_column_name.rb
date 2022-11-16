class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :jobs, :description, :content
  end
end
