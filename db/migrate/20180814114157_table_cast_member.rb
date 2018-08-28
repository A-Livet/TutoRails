class TableCastMember < ActiveRecord::Migration[5.2]
  def change
  	create_table :cast_members
  	add_column :cast_members, :name, :string
  	add_column :cast_members, :role, :string
  	add_column :cast_members, :movie_id, :integer
  end
end
