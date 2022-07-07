require 'rails_helper'

RSpec.describe "Jobs", type: :request do
  
  describe "GET /jobs" do
    
    it "should success and render to the index template" do
      get "/jobs"
    
      expect(response).to have_http_status(200)
      expect(response).to render_template(:index) 
    end     

    it "should an empty array" do 
      get "/jobs"
      expect(assigns(:jobs)).to be_empty
    end

    it "shoud not have an empty array" do
      create(:job)

      get "/jobs"
      expect(assigns(:jobs)).to_not be_empty
    end
  end

  describe "SHOW /job/{id}" do 
    let(:job) {create(:job)}

    it "should success end render the show page" do 
      get "/jobs/#{job.id}"

      expect(response).to have_http_status(200)
      expect(response).to render_template(:show)
    end

    it "should when id is" do
      get "/jobs/#{job.id}"

      expect(assigns(:job)).to eq(job)  
      expect(response).to render_template(:show)
    end
  end


  describe "SEARCH /jobs/search" do 
    let(:job) {create(:job)}

    it "should have a title" do   
      get "/jobs/search?job=#{job.title}"

      expect(response).to have_http_status(200)
      expect(assigns(:jobs)).to render_template(:search)
    end
  end

  describe "SEARCH_WITH_CATEGORY /jobs/search_with_category" do 
    let(:job) { create(:job) }

    it "should have a category" do 
      get "/jobs/search_with_category?category_id=#{job.id}" 
      expect(response).to have_http_status(200)
      expect(assigns(:jobs)).to render_template(:search)
    end
  end

  describe "NEW /jobs/new"

end
