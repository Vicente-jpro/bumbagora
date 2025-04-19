require 'rails_helper'

RSpec.describe "experiences/index", type: :view do
  before(:each) do
    assign(:experiences, [
      Experience.create!(
        company_name: "Company Name",
        profission: "Profission",
        description: "MyText",
        user: nil
      ),
      Experience.create!(
        company_name: "Company Name",
        profission: "Profission",
        description: "MyText",
        user: nil
      )
    ])
  end

  it "renders a list of experiences" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Company Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Profission".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
