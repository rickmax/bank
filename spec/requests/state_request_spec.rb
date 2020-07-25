require 'rails_helper'

RSpec.describe "States", type: :request do

  describe "GET /get_cities" do
    it "returns http success" do
      get "/state/get_cities"
      expect(response).to have_http_status(:success)
    end
  end

end
