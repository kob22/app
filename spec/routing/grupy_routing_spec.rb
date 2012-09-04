require "spec_helper"

describe GrupyController do
  describe "routing" do

    it "routes to #index" do
      get("/grupy").should route_to("grupy#index")
    end

    it "routes to #new" do
      get("/grupy/new").should route_to("grupy#new")
    end

    it "routes to #show" do
      get("/grupy/1").should route_to("grupy#show", :id => "1")
    end

    it "routes to #edit" do
      get("/grupy/1/edit").should route_to("grupy#edit", :id => "1")
    end

    it "routes to #create" do
      post("/grupy").should route_to("grupy#create")
    end

    it "routes to #update" do
      put("/grupy/1").should route_to("grupy#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/grupy/1").should route_to("grupy#destroy", :id => "1")
    end

  end
end
