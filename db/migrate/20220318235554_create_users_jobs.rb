class CreateUsersJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :users_jobs do |t|
      t.string :type_subscription , default: "creator"
      t.references :user, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
