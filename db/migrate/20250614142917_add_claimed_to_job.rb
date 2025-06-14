class AddClaimedToJob < ActiveRecord::Migration[7.2]
  def change
    add_column :jobs, :claimed, :boolean, default: false
  end
end
