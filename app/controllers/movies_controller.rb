class MoviesController < ApplicationController



  def index
  	@movies = Movie.all
	end

  def create
  	if params[:title]!="" && params[:director]!=""
  		@movie = Movie.create title:params[:title], director:params[:director]
		end
  end

  def show
  	@movie = Movie.find(params[:id])
  	@cast_members = @movie.cast_members
  end

  def update
  	Movie.find(params[:id]).update title: params[:title], director: params[:director]
		@movie = Movie.find(params[:id])
	end

  def destroy
  	Movie.find(params[:id]).destroy
  	redirect_to "/movies"
  end

  def addActor
		@movie = Movie.find(params[:movie_id])
		unless params[:name]=="" || params[:role]==""
			if CastMember.find_by_name(params[:name]).nil?
				@cast_member = CastMember.new name: params[:name], role: params[:role]
				@cast_member.movies<< @movie
				@cast_member.save
			else
				unless !CastMember.find_by_name(params[:name]).movies.find_by_id(@movie.id).nil?
					@cast_member = CastMember.find_by_name(params[:name])
					@cast_member.movies<< @movie
					@cast_member.save
				end
			end
		end
		@cast_members = @movie.cast_members
	end
end
