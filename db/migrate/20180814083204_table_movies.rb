class TableMovies < ActiveRecord::Migration[5.2]
  def change
  	create_table :movies
  	add_column :movies, :title, :string
  	add_column :movies, :director, :string
  end
end
