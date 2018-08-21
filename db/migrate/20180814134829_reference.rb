class Reference < ActiveRecord::Migration[5.2]
  def change
  	add_reference :cast_members, :movies
  end
end
