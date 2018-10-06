require "rails_helper"

RSpec.describe RouteSchedulesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/route_schedules").to route_to("route_schedules#index")
    end

    it "routes to #show" do
      expect(:get => "/route_schedules/1").to route_to("route_schedules#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/route_schedules").to route_to("route_schedules#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/route_schedules/1").to route_to("route_schedules#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/route_schedules/1").to route_to("route_schedules#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/route_schedules/1").to route_to("route_schedules#destroy", :id => "1")
    end
  end
end
