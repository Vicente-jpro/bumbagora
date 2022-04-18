class AddUserIdToJobs < ActiveRecord::Migration[7.0]
  def change
    add_reference :jobs, :user, null: false, foreign_key: true, default: 1
  end
end
