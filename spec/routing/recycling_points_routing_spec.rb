require "rails_helper"

RSpec.describe RecyclingPointsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/recycling_points").to route_to("recycling_points#index")
    end

    it "routes to #show" do
      expect(:get => "/recycling_points/1").to route_to("recycling_points#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/recycling_points").to route_to("recycling_points#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/recycling_points/1").to route_to("recycling_points#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/recycling_points/1").to route_to("recycling_points#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/recycling_points/1").to route_to("recycling_points#destroy", :id => "1")
    end
  end
end
