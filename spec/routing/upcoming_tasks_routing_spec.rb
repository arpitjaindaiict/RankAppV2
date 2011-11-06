require "spec_helper"

describe UpcomingTasksController do
  describe "routing" do

    it "routes to #index" do
      get("/upcoming_tasks").should route_to("upcoming_tasks#index")
    end

    it "routes to #new" do
      get("/upcoming_tasks/new").should route_to("upcoming_tasks#new")
    end

    it "routes to #show" do
      get("/upcoming_tasks/1").should route_to("upcoming_tasks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/upcoming_tasks/1/edit").should route_to("upcoming_tasks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/upcoming_tasks").should route_to("upcoming_tasks#create")
    end

    it "routes to #update" do
      put("/upcoming_tasks/1").should route_to("upcoming_tasks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/upcoming_tasks/1").should route_to("upcoming_tasks#destroy", :id => "1")
    end

  end
end
