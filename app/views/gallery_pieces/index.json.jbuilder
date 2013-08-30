json.array!(@gallery_pieces) do |gallery_piece|
  json.extract! gallery_piece, :title, :type, :size, :materials, :gallery_id
  json.url gallery_piece_url(gallery_piece, format: :json)
end
