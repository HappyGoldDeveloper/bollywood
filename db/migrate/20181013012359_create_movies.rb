class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :release_date
      t.decimal :imdb
      t.string :story_line
      t.references :image, foreign_key: true

      t.timestamps
    end
  end
end
