require "rails_helper"

RSpec.describe RouteStopsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/route_stops").to route_to("route_stops#index")
    end

    it "routes to #show" do
      expect(:get => "/route_stops/1").to route_to("route_stops#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/route_stops").to route_to("route_stops#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/route_stops/1").to route_to("route_stops#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/route_stops/1").to route_to("route_stops#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/route_stops/1").to route_to("route_stops#destroy", :id => "1")
    end
  end
end
