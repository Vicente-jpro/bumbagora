class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :type_job, null: false, default: "Presencial"
      t.text :description
      t.integer :salary
      t.string :expiry_date
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
