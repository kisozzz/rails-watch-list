class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :overview
      t.string :poster_url
      t.decimal :rating, precision:10, scale:1

      t.timestamps
    end
  end
end
