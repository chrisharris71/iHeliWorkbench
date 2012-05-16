require "spec_helper"

describe ExhaustsController do
  describe "routing" do

    it "routes to #index" do
      get("/exhausts").should route_to("exhausts#index")
    end

    it "routes to #new" do
      get("/exhausts/new").should route_to("exhausts#new")
    end

    it "routes to #show" do
      get("/exhausts/1").should route_to("exhausts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/exhausts/1/edit").should route_to("exhausts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/exhausts").should route_to("exhausts#create")
    end

    it "routes to #update" do
      put("/exhausts/1").should route_to("exhausts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/exhausts/1").should route_to("exhausts#destroy", :id => "1")
    end

  end
end
