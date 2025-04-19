require 'rails_helper'

RSpec.describe "experiences/show", type: :view do
  before(:each) do
    assign(:experience, Experience.create!(
      company_name: "Company Name",
      profission: "Profission",
      description: "MyText",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Profission/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
