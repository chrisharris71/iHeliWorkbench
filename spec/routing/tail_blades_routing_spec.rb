require "spec_helper"

describe TailBladesController do
  describe "routing" do

    it "routes to #index" do
      get("/tail_blades").should route_to("tail_blades#index")
    end

    it "routes to #new" do
      get("/tail_blades/new").should route_to("tail_blades#new")
    end

    it "routes to #show" do
      get("/tail_blades/1").should route_to("tail_blades#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tail_blades/1/edit").should route_to("tail_blades#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tail_blades").should route_to("tail_blades#create")
    end

    it "routes to #update" do
      put("/tail_blades/1").should route_to("tail_blades#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tail_blades/1").should route_to("tail_blades#destroy", :id => "1")
    end

  end
end
