require 'rails_helper'

RSpec.describe "TruckRoutes", type: :request do
  describe "GET /truck_routes" do
    it "works! (now write some real specs)" do
      get truck_routes_path
      expect(response).to have_http_status(200)
    end
  end
end
