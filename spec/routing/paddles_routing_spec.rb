require "spec_helper"

describe PaddlesController do
  describe "routing" do

    it "routes to #index" do
      get("/paddles").should route_to("paddles#index")
    end

    it "routes to #new" do
      get("/paddles/new").should route_to("paddles#new")
    end

    it "routes to #show" do
      get("/paddles/1").should route_to("paddles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/paddles/1/edit").should route_to("paddles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/paddles").should route_to("paddles#create")
    end

    it "routes to #update" do
      put("/paddles/1").should route_to("paddles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/paddles/1").should route_to("paddles#destroy", :id => "1")
    end

  end
end
