class SongsController < ApplicationController
    
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def show
    @song = Song.find(params[:id])
  end
  
  def create
    song = Song.create(params_song)
    redirect_to song
  end
  
  def update
    song = Song.update(params_song)
    redirect_to song
  end
  
  def edit
    @song = Song.find(params[:id])
  end

  private
  def params_song
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
