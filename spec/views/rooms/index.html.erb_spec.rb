require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        user: nil
      ),
      Room.create!(
        user: nil
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
