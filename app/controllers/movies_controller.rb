class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie
    else
      render action: "new"
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      redirect_to @movie
    else
      render action: "edit"
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy!
    redirect_to :movies
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :year, :description)
  end
end
