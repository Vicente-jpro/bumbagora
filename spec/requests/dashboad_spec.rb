require 'rails_helper'

RSpec.describe "Dashboads", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/dashboad/index"
      expect(response).to have_http_status(:success)
    end
  end

end
