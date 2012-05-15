require "spec_helper"

describe HeliKitsController do
  describe "routing" do

    it "routes to #index" do
      get("/heli_kits").should route_to("heli_kits#index")
    end

    it "routes to #new" do
      get("/heli_kits/new").should route_to("heli_kits#new")
    end

    it "routes to #show" do
      get("/heli_kits/1").should route_to("heli_kits#show", :id => "1")
    end

    it "routes to #edit" do
      get("/heli_kits/1/edit").should route_to("heli_kits#edit", :id => "1")
    end

    it "routes to #create" do
      post("/heli_kits").should route_to("heli_kits#create")
    end

    it "routes to #update" do
      put("/heli_kits/1").should route_to("heli_kits#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/heli_kits/1").should route_to("heli_kits#destroy", :id => "1")
    end

  end
end
