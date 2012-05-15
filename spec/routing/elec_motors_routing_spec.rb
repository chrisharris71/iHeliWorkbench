require "spec_helper"

describe ElecMotorsController do
  describe "routing" do

    it "routes to #index" do
      get("/elec_motors").should route_to("elec_motors#index")
    end

    it "routes to #new" do
      get("/elec_motors/new").should route_to("elec_motors#new")
    end

    it "routes to #show" do
      get("/elec_motors/1").should route_to("elec_motors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/elec_motors/1/edit").should route_to("elec_motors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/elec_motors").should route_to("elec_motors#create")
    end

    it "routes to #update" do
      put("/elec_motors/1").should route_to("elec_motors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/elec_motors/1").should route_to("elec_motors#destroy", :id => "1")
    end

  end
end
