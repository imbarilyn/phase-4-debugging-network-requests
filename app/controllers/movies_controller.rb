class MoviesController < ApplicationController
  
  def index
    movies = Movie.all
    render json: movies
  end

  def create
    # byebug
    movie = Movie.create(strong_params)
    render json: movie, status: 201
    # resue ActiveRecord::RecordInvalid => invalid
    # render json: {"errors": invalid.record.errors.message}
    end

private
 def strong_params
  params.permit(:title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)

 end

end
