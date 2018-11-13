# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  
  protect_from_forgery with: :exception
  
  #TMDB
  require 'themoviedb-api'
  Tmdb::Api.key("62eb90992ffe3b066599f478d9738cc6")
  
  def index
    @movies = Movie.all.order(:title)
  end
  
  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
    render(:partial => 'movie', :object => @movie) if request.xhr?
    # will render app/views/movies/show.<extension> by default
  end

  
  def new
    # for new movie page
  end
  
  def create
    @movie = Movie.create!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully created."
    if @movie == nil
      redirect_to movies_path
    else
      redirect_to movie_path(@movie)
    end
  end
  
  def edit
    @movie = Movie.find params[:id]
  end
 
  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
    # respond_to do |client_wants|
    #   client_wants.html {  redirect_to movie_path(@movie)  } # as before
    #   client_wants.xml  {  render :xml => @movie.to_xml    }
    # end
  end
  
  def destroy
    @movie = Movie.find(params[:id])
    @movie.delete
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end
  

  def search_tmdb
    @data = Movie.all
    @movie = Tmdb::Search.movie(params[:search_terms], language: 'en')
    if(@movie.results.length < 1)
      # if failure
      flash[:warning] = "'#{params[:search_terms]}' was not found in TMDb."
      redirect_to movies_path
    end
  end
  
  private
    def movie_params
      params.require(:movie).permit(:title, :rating, :release_date, :description)
    end
end