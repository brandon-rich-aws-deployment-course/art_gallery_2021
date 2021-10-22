class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :album_title
      t.string :artist
      t.string :year_released
      t.string :cover_image_url

      t.timestamps
    end
  end
end
