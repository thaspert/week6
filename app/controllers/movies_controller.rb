class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    if params[:keyword].present?
      @movies = @movies.where("title LIKE '%#{params[:keyword]}%'")
    end

    render 'index'  # This would be implied by default
  end

  def create
    movie = Movie.new
    movie.title = params[:title]
    movie.plot = params[:plot]
    movie.image_url = params[:image_url]
    movie.director_id = params[:director_id]
    movie.year = params[:year]
    movie.save
    redirect_to movies_url
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    if @movie == nil
      redirect_to movies_url
    end
  end

  def new
    @movie = Movie.new
  end

  def edit
    @movie = Movie.find_by(id: params[:id])
  end

  def update
    movie = Movie.find_by(id: params[:id])
    movie.title = params[:title]
    movie.plot = params[:plot]
    movie.image_url = params[:image_url]
    movie.year = params[:year]
    movie.save
    redirect_to movies_url(@movie)
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    if movie
      movie.delete
    end
    redirect_to movies_url
  end

end
