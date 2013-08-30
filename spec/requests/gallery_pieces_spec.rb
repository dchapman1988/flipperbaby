require 'spec_helper'

describe "GalleryPieces" do
  describe "GET /gallery_pieces" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get gallery_pieces_path
      response.status.should be(200)
    end
  end
end
