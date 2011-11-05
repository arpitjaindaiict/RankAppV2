require "spec_helper"

describe MastersController do
  describe "routing" do

    it "routes to #index" do
      get("/masters").should route_to("masters#index")
    end

    it "routes to #new" do
      get("/masters/new").should route_to("masters#new")
    end

    it "routes to #show" do
      get("/masters/1").should route_to("masters#show", :id => "1")
    end

    it "routes to #edit" do
      get("/masters/1/edit").should route_to("masters#edit", :id => "1")
    end

    it "routes to #create" do
      post("/masters").should route_to("masters#create")
    end

    it "routes to #update" do
      put("/masters/1").should route_to("masters#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/masters/1").should route_to("masters#destroy", :id => "1")
    end

  end
end
