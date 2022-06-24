require 'rails_helper'

RSpec.describe Category, type: :model do
  
  context "Category" do 
    let(:category) { create(:category) }

    it "has a name" do 
      expect(category.name).to eq("Ruby")
    end

    it "has a name" do 
      expect(1).to eq(1)
    end
    
  end

end
