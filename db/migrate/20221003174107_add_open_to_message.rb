class AddOpenToMessage < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :open, :boolean, default: false
  end
end
