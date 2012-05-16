require "spec_helper"

describe ThrottleServosController do
  describe "routing" do

    it "routes to #index" do
      get("/throttle_servos").should route_to("throttle_servos#index")
    end

    it "routes to #new" do
      get("/throttle_servos/new").should route_to("throttle_servos#new")
    end

    it "routes to #show" do
      get("/throttle_servos/1").should route_to("throttle_servos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/throttle_servos/1/edit").should route_to("throttle_servos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/throttle_servos").should route_to("throttle_servos#create")
    end

    it "routes to #update" do
      put("/throttle_servos/1").should route_to("throttle_servos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/throttle_servos/1").should route_to("throttle_servos#destroy", :id => "1")
    end

  end
end
