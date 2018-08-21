class CreateCastMembersMoviesJoinTable2 < ActiveRecord::Migration[5.2]
  def change
    create_join_table :cast_members, :movies do |t|
      t.index :cast_member_id
      t.index :movie_id
    end
    drop_table :castMembers_movies
  end
end
