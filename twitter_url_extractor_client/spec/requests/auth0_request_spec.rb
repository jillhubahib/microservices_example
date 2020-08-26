require "rails_helper"

RSpec.describe "Auth0s", type: :request do
  describe "GET /callback" do
    it "returns http success" do
      post "/auth/auth0/callback"
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "GET /failure" do
    it "returns http success" do
      get "/auth/failure"
      expect(response).to have_http_status(:success)
    end
  end
end
