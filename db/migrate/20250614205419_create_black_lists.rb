class CreateBlackLists < ActiveRecord::Migration[7.2]
  def change
    create_table :black_lists do |t|
      t.string :email
      t.integer :penalty, default: 1

      t.timestamps
    end
  end
end
