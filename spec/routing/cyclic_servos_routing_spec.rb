require "spec_helper"

describe CyclicServosController do
  describe "routing" do

    it "routes to #index" do
      get("/cyclic_servos").should route_to("cyclic_servos#index")
    end

    it "routes to #new" do
      get("/cyclic_servos/new").should route_to("cyclic_servos#new")
    end

    it "routes to #show" do
      get("/cyclic_servos/1").should route_to("cyclic_servos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cyclic_servos/1/edit").should route_to("cyclic_servos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cyclic_servos").should route_to("cyclic_servos#create")
    end

    it "routes to #update" do
      put("/cyclic_servos/1").should route_to("cyclic_servos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cyclic_servos/1").should route_to("cyclic_servos#destroy", :id => "1")
    end

  end
end
