class CreateBackList < ActiveRecord::Migration[7.2]
  def change
    create_table :back_lists do |t|
      t.string :email
      t.integer :penalty

      t.timestamps
    end
  end
end
