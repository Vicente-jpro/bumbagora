class FixColumnName < ActiveRecord::Migration[7.0]
  def self.up
    rename_column :invites, :opened, :opened, default: false
    rename_column :messages, :openned, :boolean, default: false
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
