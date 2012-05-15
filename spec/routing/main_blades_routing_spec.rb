require "spec_helper"

describe MainBladesController do
  describe "routing" do

    it "routes to #index" do
      get("/main_blades").should route_to("main_blades#index")
    end

    it "routes to #new" do
      get("/main_blades/new").should route_to("main_blades#new")
    end

    it "routes to #show" do
      get("/main_blades/1").should route_to("main_blades#show", :id => "1")
    end

    it "routes to #edit" do
      get("/main_blades/1/edit").should route_to("main_blades#edit", :id => "1")
    end

    it "routes to #create" do
      post("/main_blades").should route_to("main_blades#create")
    end

    it "routes to #update" do
      put("/main_blades/1").should route_to("main_blades#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/main_blades/1").should route_to("main_blades#destroy", :id => "1")
    end

  end
end
