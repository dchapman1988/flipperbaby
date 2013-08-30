require "spec_helper"

describe GalleryPiecesController do
  describe "routing" do

    it "routes to #index" do
      get("/gallery_pieces").should route_to("gallery_pieces#index")
    end

    it "routes to #new" do
      get("/gallery_pieces/new").should route_to("gallery_pieces#new")
    end

    it "routes to #show" do
      get("/gallery_pieces/1").should route_to("gallery_pieces#show", :id => "1")
    end

    it "routes to #edit" do
      get("/gallery_pieces/1/edit").should route_to("gallery_pieces#edit", :id => "1")
    end

    it "routes to #create" do
      post("/gallery_pieces").should route_to("gallery_pieces#create")
    end

    it "routes to #update" do
      put("/gallery_pieces/1").should route_to("gallery_pieces#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/gallery_pieces/1").should route_to("gallery_pieces#destroy", :id => "1")
    end

  end
end
