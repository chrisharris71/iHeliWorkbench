require "spec_helper"

describe GovernorsController do
  describe "routing" do

    it "routes to #index" do
      get("/governors").should route_to("governors#index")
    end

    it "routes to #new" do
      get("/governors/new").should route_to("governors#new")
    end

    it "routes to #show" do
      get("/governors/1").should route_to("governors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/governors/1/edit").should route_to("governors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/governors").should route_to("governors#create")
    end

    it "routes to #update" do
      put("/governors/1").should route_to("governors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/governors/1").should route_to("governors#destroy", :id => "1")
    end

  end
end
