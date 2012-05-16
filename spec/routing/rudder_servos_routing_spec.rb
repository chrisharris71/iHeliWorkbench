require "spec_helper"

describe RudderServosController do
  describe "routing" do

    it "routes to #index" do
      get("/rudder_servos").should route_to("rudder_servos#index")
    end

    it "routes to #new" do
      get("/rudder_servos/new").should route_to("rudder_servos#new")
    end

    it "routes to #show" do
      get("/rudder_servos/1").should route_to("rudder_servos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rudder_servos/1/edit").should route_to("rudder_servos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rudder_servos").should route_to("rudder_servos#create")
    end

    it "routes to #update" do
      put("/rudder_servos/1").should route_to("rudder_servos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rudder_servos/1").should route_to("rudder_servos#destroy", :id => "1")
    end

  end
end
