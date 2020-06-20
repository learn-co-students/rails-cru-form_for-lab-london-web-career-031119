class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
    @genres = Genre.all
    @artists = Artist.all
  end

  def create
    @song = Song.create(post_params)
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
    @genres = Genre.all
    @artists = Artist.all
  end

  def update
    @song = Song.find(params[:id])
    @song.update(post_params)
    @song.save
    redirect_to song_path(@song)
  end

  private

  def post_params
    params.require(:song).permit(:name, :genre_id, :artist_id)
  end
end
