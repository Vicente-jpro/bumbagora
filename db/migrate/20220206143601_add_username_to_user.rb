class AddUsernameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :name_country, :string
    add_column :users, :localization_description
  end
end