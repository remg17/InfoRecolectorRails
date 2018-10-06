require "rails_helper"

RSpec.describe TruckRoutesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/truck_routes").to route_to("truck_routes#index")
    end

    it "routes to #show" do
      expect(:get => "/truck_routes/1").to route_to("truck_routes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/truck_routes").to route_to("truck_routes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/truck_routes/1").to route_to("truck_routes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/truck_routes/1").to route_to("truck_routes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/truck_routes/1").to route_to("truck_routes#destroy", :id => "1")
    end
  end
end
