class AddTypeJobToJob < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :type_job, :string, default: "Presencial"
    #Ex:- :default =>''
  end
end
