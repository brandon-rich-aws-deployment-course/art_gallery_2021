json.extract! album, :id, :album_title, :artist, :year_released, :cover_image_url, :created_at, :updated_at
json.url album_url(album, format: :json)
