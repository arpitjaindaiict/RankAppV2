require "spec_helper"

describe NewtasksController do
  describe "routing" do

    it "routes to #index" do
      get("/newtasks").should route_to("newtasks#index")
    end

    it "routes to #new" do
      get("/newtasks/new").should route_to("newtasks#new")
    end

    it "routes to #show" do
      get("/newtasks/1").should route_to("newtasks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/newtasks/1/edit").should route_to("newtasks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/newtasks").should route_to("newtasks#create")
    end

    it "routes to #update" do
      put("/newtasks/1").should route_to("newtasks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/newtasks/1").should route_to("newtasks#destroy", :id => "1")
    end

  end
end
