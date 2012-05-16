require "spec_helper"

describe FblUnitsController do
  describe "routing" do

    it "routes to #index" do
      get("/fbl_units").should route_to("fbl_units#index")
    end

    it "routes to #new" do
      get("/fbl_units/new").should route_to("fbl_units#new")
    end

    it "routes to #show" do
      get("/fbl_units/1").should route_to("fbl_units#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fbl_units/1/edit").should route_to("fbl_units#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fbl_units").should route_to("fbl_units#create")
    end

    it "routes to #update" do
      put("/fbl_units/1").should route_to("fbl_units#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fbl_units/1").should route_to("fbl_units#destroy", :id => "1")
    end

  end
end
