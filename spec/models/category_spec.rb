require 'rails_helper'

RSpec.describe Category, type: :model do
  
  describe "Category model" do 
    let(:category) { create(:category) }

    it "has a name" do 
      expect(category.name).to eq("Programming")
    end
  end

end
