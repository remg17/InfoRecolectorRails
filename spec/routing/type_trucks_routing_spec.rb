require "rails_helper"

RSpec.describe TypeTrucksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/type_trucks").to route_to("type_trucks#index")
    end

    it "routes to #show" do
      expect(:get => "/type_trucks/1").to route_to("type_trucks#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/type_trucks").to route_to("type_trucks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/type_trucks/1").to route_to("type_trucks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/type_trucks/1").to route_to("type_trucks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/type_trucks/1").to route_to("type_trucks#destroy", :id => "1")
    end
  end
end
