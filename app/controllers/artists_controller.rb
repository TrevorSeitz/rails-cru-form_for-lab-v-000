class ArtistsController < ApplicationController

    def index
      @artists = Artist.all
    end

    def new
      @artist = Artist.new
      @artist.save
    end

    def show
      @artist = Artist.find(params[:id])
    end

    def create
      @artist = Artist.create(name: params[:name], bio: params[:bio])
      redirect_to artist_path(@artist)
    end

    def update
      @artist = Artist.find(params[:id])
      @artist.update(artist_params)
      redirect_to artist_path(@artist)
    end

    def edit
      @artist = Artist.find(params[:id])
    end

    private

    def artist_params
      params.require(:artist).permit(:name, :bio)
    end

end
