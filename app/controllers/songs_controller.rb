class SongsController < ApplicationController

      def index
        @songs = Song.all
      end

      def show
        @song = Song.find(params[:id])
      end

      def new
        @song=Song.new
      end

      def create
        @song = Song.create(name: params[:name], artist_id: params[:artist_id], genre_id: params[:genre_id])
        redirect_to song_path(@song)
      end

  private

  def song_params(*args)
    params.require(:artist).permit(*args)
  end
end
