require 'spec_helper'

describe "gallery_pieces/show" do
  before(:each) do
    @gallery_piece = assign(:gallery_piece, stub_model(GalleryPiece,
      :title => "Title",
      :type => "Type",
      :size => "Size",
      :materials => "Materials",
      :gallery_id => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Type/)
    rendered.should match(/Size/)
    rendered.should match(/Materials/)
    rendered.should match(//)
  end
end
