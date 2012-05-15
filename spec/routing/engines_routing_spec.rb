require "spec_helper"

describe EnginesController do
  describe "routing" do

    it "routes to #index" do
      get("/engines").should route_to("engines#index")
    end

    it "routes to #new" do
      get("/engines/new").should route_to("engines#new")
    end

    it "routes to #show" do
      get("/engines/1").should route_to("engines#show", :id => "1")
    end

    it "routes to #edit" do
      get("/engines/1/edit").should route_to("engines#edit", :id => "1")
    end

    it "routes to #create" do
      post("/engines").should route_to("engines#create")
    end

    it "routes to #update" do
      put("/engines/1").should route_to("engines#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/engines/1").should route_to("engines#destroy", :id => "1")
    end

  end
end
