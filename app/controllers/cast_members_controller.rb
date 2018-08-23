class CastMembersController < ApplicationController
  def index
    @movie_id = params[:id]
    if @movie_id.nil?
      @cast_members = CastMember.all.sort_by {|a| a.name.capitalize}
    else
      @cast_members = Movie.find(@movie_id).cast_members
    end
  end

  def show
    @cast_member = CastMember.find(params[:id])
    @movies = @cast_member.movies
  end

  def search
  end

  def create


  end
end
