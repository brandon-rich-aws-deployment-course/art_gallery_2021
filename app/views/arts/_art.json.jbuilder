json.extract! art, :id, :title, :description, :artist, :year, :image_url, :created_at, :updated_at
json.url art_url(art, format: :json)
