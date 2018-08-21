class ModifyCastTable < ActiveRecord::Migration[5.2]
  def change
  	remove_column :cast_members, :movie_id, :integer
  end
end
