class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    artist = Artist.create(get_params)
    redirect_to artists_path
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    artist = Artist.find(params[:id])
    artist.update(get_params)
    redirect_to artist_path(artist)
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.delete
    redirect_to artists_path
  end

  private

  def get_params
    params.require(:artist).permit(:name, :bio)
  end

end
