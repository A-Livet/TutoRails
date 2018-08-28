class CastTable < ActiveRecord::Migration[5.2]
  def change
  	drop_table :cast_members
  end
end
