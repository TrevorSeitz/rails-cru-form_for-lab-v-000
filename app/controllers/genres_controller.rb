class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
    @genre.save
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Genre.create(name: params[:name])
    redirect_to genre_path(@genre)
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(name: params[:name])
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  private

  def genre_params(*args)
    params.require(:artist).permit(*args)
  end

end
