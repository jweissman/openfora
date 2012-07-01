require "spec_helper"

describe LeavesController do
  describe "routing" do

    it "routes to #index" do
      get("/leaves").should route_to("leaves#index")
    end

    it "routes to #new" do
      get("/leaves/new").should route_to("leaves#new")
    end

    it "routes to #show" do
      get("/leaves/1").should route_to("leaves#show", :id => "1")
    end

    it "routes to #edit" do
      get("/leaves/1/edit").should route_to("leaves#edit", :id => "1")
    end

    it "routes to #create" do
      post("/leaves").should route_to("leaves#create")
    end

    it "routes to #update" do
      put("/leaves/1").should route_to("leaves#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/leaves/1").should route_to("leaves#destroy", :id => "1")
    end

  end
end
