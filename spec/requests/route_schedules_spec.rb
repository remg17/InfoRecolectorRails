require 'rails_helper'

RSpec.describe "RouteSchedules", type: :request do
  describe "GET /route_schedules" do
    it "works! (now write some real specs)" do
      get route_schedules_path
      expect(response).to have_http_status(200)
    end
  end
end
