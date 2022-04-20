class AddTypeSubscriptionToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :type_subscription, :string, default: "Candidate"
  end
end
