require 'spec_helper'

describe "gallery_pieces/index" do
  before(:each) do
    assign(:gallery_pieces, [
      stub_model(GalleryPiece,
        :title => "Title",
        :type => "Type",
        :size => "Size",
        :materials => "Materials",
        :gallery_id => ""
      ),
      stub_model(GalleryPiece,
        :title => "Title",
        :type => "Type",
        :size => "Size",
        :materials => "Materials",
        :gallery_id => ""
      )
    ])
  end

  it "renders a list of gallery_pieces" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Materials".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
