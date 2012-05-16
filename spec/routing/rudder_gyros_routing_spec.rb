require "spec_helper"

describe RudderGyrosController do
  describe "routing" do

    it "routes to #index" do
      get("/rudder_gyros").should route_to("rudder_gyros#index")
    end

    it "routes to #new" do
      get("/rudder_gyros/new").should route_to("rudder_gyros#new")
    end

    it "routes to #show" do
      get("/rudder_gyros/1").should route_to("rudder_gyros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rudder_gyros/1/edit").should route_to("rudder_gyros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rudder_gyros").should route_to("rudder_gyros#create")
    end

    it "routes to #update" do
      put("/rudder_gyros/1").should route_to("rudder_gyros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rudder_gyros/1").should route_to("rudder_gyros#destroy", :id => "1")
    end

  end
end
