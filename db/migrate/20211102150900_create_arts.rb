class CreateArts < ActiveRecord::Migration[6.1]
  def change
    create_table :arts do |t|
      t.string :title
      t.string :description
      t.string :artist
      t.string :year
      t.string :image_url

      t.timestamps
    end
  end
end
