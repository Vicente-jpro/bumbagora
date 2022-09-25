require 'rails_helper'

class JobsControllerTest < ActionController::TestCase
	include Devise::Test::IntegrationHelpers # Rails >= 5

  describe "SEARCH /jobs/search" do 
    let(:job) {create(:job)}
    let(:user) {create(:user)}


    it "should have a title" do   
      get "/jobs/search?job=#{job.title}"

      @request.session[:user_id] = job.user_id

      expect(response).to have_http_status(200)
      expect(assigns(:jobs)).to render_template(:search)
    end
  end

end