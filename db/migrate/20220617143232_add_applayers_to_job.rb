class AddApplayersToJob < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :applayers, :integer, default: 0
  end
end
