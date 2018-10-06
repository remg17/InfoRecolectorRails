require 'rails_helper'

RSpec.describe "TypeTrucks", type: :request do
  describe "GET /type_trucks" do
    it "works! (now write some real specs)" do
      get type_trucks_path
      expect(response).to have_http_status(200)
    end
  end
end
