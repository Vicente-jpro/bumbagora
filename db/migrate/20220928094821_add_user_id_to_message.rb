class AddUserIdToMessage < ActiveRecord::Migration[7.0]
  def change
    add_reference :messages, :user, null: false, foreign_key: true, default: 2
  end
end
