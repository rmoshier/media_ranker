class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def create
    @album = Album.new(album_params)

    @album.save
    redirect_to @album
  end

  def new
  end

  def show
    @album = Album.find(params[:id])
  end

  private

  def album_params
    params.require(:album).permit(:name, :artist, :description)
  end

end
