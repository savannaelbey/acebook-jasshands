require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do #changed from :success to 302 redirect due to GET #new redirecting to /posts
    it "returns http success" do
      get :create
      expect(response).to have_http_status(302)
    end
  end

  # describe "GET #login" do
  #   it "returns http success" do
  #     get :login
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  describe "GET #welcome" do
    it "returns http success" do
      get :welcome
      expect(response).to have_http_status(:success)
    end
  end

end
