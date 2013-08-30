json.array!(@galleries) do |gallery|
  json.extract! gallery, :name, :period
  json.url gallery_url(gallery, format: :json)
end
