class CreateExperiences < ActiveRecord::Migration[7.2]
  def change
    create_table :experiences do |t|
      t.string :company_name
      t.string :profission
      t.date :start_date
      t.date :end_date
      t.text :description
      t.references :user, null: false, foreign_key: true
    end
  end
end
