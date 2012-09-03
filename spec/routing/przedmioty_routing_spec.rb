require "spec_helper"

describe PrzedmiotyController do
  describe "routing" do

    it "routes to #index" do
      get("/przedmioty").should route_to("przedmioty#index")
    end

    it "routes to #new" do
      get("/przedmioty/new").should route_to("przedmioty#new")
    end

    it "routes to #show" do
      get("/przedmioty/1").should route_to("przedmioty#show", :id => "1")
    end

    it "routes to #edit" do
      get("/przedmioty/1/edit").should route_to("przedmioty#edit", :id => "1")
    end

    it "routes to #create" do
      post("/przedmioty").should route_to("przedmioty#create")
    end

    it "routes to #update" do
      put("/przedmioty/1").should route_to("przedmioty#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/przedmioty/1").should route_to("przedmioty#destroy", :id => "1")
    end

  end
end
