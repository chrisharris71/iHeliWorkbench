require "spec_helper"

describe SpeedControlsController do
  describe "routing" do

    it "routes to #index" do
      get("/speed_controls").should route_to("speed_controls#index")
    end

    it "routes to #new" do
      get("/speed_controls/new").should route_to("speed_controls#new")
    end

    it "routes to #show" do
      get("/speed_controls/1").should route_to("speed_controls#show", :id => "1")
    end

    it "routes to #edit" do
      get("/speed_controls/1/edit").should route_to("speed_controls#edit", :id => "1")
    end

    it "routes to #create" do
      post("/speed_controls").should route_to("speed_controls#create")
    end

    it "routes to #update" do
      put("/speed_controls/1").should route_to("speed_controls#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/speed_controls/1").should route_to("speed_controls#destroy", :id => "1")
    end

  end
end
