require "rails_helper"

RSpec.describe "Root", type: :request do
  describe "GET /index" do
    xit "returns http success" do
      get "/"
      # byebug
      expect(response).to have_http_status(:success)
    end
  end
end
