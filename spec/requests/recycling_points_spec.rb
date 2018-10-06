require 'rails_helper'

RSpec.describe "RecyclingPoints", type: :request do
  describe "GET /recycling_points" do
    it "works! (now write some real specs)" do
      get recycling_points_path
      expect(response).to have_http_status(200)
    end
  end
end
