class CreateCastMembersMoviesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :castMembers_movies, id: false do |t|
      t.integer :castMember_id
      t.integer :movie_id
    end

    add_index :castMembers_movies, :assembly_id
    add_index :castMembers_movies, :movie_id
  end
end
