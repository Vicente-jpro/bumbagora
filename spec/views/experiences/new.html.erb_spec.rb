require 'rails_helper'

RSpec.describe "experiences/new", type: :view do
  before(:each) do
    assign(:experience, Experience.new(
      company_name: "MyString",
      profission: "MyString",
      description: "MyText",
      user: nil
    ))
  end

  it "renders new experience form" do
    render

    assert_select "form[action=?][method=?]", experiences_path, "post" do

      assert_select "input[name=?]", "experience[company_name]"

      assert_select "input[name=?]", "experience[profission]"

      assert_select "textarea[name=?]", "experience[description]"

      assert_select "input[name=?]", "experience[user_id]"
    end
  end
end
