require 'rails_helper'

RSpec.describe Job, type: :model do

  describe "model" do
    let(:job) {create(:job)}


     it "has a title." do 
       puts "Jobs -> #{job.inspect}"
      expect(job.title).to eq("Ruby on Rails")
     end

  #   it "has a job type." do 
  #     expect(job.type_job).to eq("Remota")
  #   end

  #   it "has a salary." do 
  #     expect(job.salary).to eq(500)
  #   end

  #   it "has a category." do 
  #     expect(job.category.name).to eq("Programming")
  #   end

  #   it "has a user." do 
  #     expect(job.user.username).to eq("Vicente Simao")
  #   end

  #   it "has one applayer" do 
  #     expect(job.applayers).to eq(1)
  #   end
   end

  
end
