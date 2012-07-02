require "spec_helper"

describe AssociationsController do
  describe "routing" do

    it "routes to #index" do
      get("/associations").should route_to("associations#index")
    end

    it "routes to #new" do
      get("/associations/new").should route_to("associations#new")
    end

    it "routes to #show" do
      get("/associations/1").should route_to("associations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/associations/1/edit").should route_to("associations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/associations").should route_to("associations#create")
    end

    it "routes to #update" do
      put("/associations/1").should route_to("associations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/associations/1").should route_to("associations#destroy", :id => "1")
    end

  end
end
