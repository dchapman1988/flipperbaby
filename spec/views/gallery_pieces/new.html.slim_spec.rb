require 'spec_helper'

describe "gallery_pieces/new" do
  before(:each) do
    assign(:gallery_piece, stub_model(GalleryPiece,
      :title => "MyString",
      :type => "",
      :size => "MyString",
      :materials => "MyString",
      :gallery_id => ""
    ).as_new_record)
  end

  it "renders new gallery_piece form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gallery_pieces_path, "post" do
      assert_select "input#gallery_piece_title[name=?]", "gallery_piece[title]"
      assert_select "input#gallery_piece_type[name=?]", "gallery_piece[type]"
      assert_select "input#gallery_piece_size[name=?]", "gallery_piece[size]"
      assert_select "input#gallery_piece_materials[name=?]", "gallery_piece[materials]"
      assert_select "input#gallery_piece_gallery_id[name=?]", "gallery_piece[gallery_id]"
    end
  end
end
