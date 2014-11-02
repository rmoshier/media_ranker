class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def create
    @movie = Movie.new(movie_params)

    @movie.save
    redirect_to @movie
  end

  def edit
    @movies = Movie.find(params[:id])
  end

  def new
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      redirect_to @movie
    else
      render 'edit'
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :director, :description)
  end

end
