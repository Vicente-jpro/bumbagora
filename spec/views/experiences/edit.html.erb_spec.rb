require 'rails_helper'

RSpec.describe "experiences/edit", type: :view do
  let(:experience) {
    Experience.create!(
      company_name: "MyString",
      profission: "MyString",
      description: "MyText",
      user: nil
    )
  }

  before(:each) do
    assign(:experience, experience)
  end

  it "renders the edit experience form" do
    render

    assert_select "form[action=?][method=?]", experience_path(experience), "post" do

      assert_select "input[name=?]", "experience[company_name]"

      assert_select "input[name=?]", "experience[profission]"

      assert_select "textarea[name=?]", "experience[description]"

      assert_select "input[name=?]", "experience[user_id]"
    end
  end
end
