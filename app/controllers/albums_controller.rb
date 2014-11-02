class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def create
    @album = Album.new(album_params)

    @album.save
    redirect_to @album
  end

  def edit
    @album = Album.find(params[:id])
  end

  def new
  end

  def show
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])

    if @album.update(album_params)
      redirect_to @album
    else
      render 'edit'
    end
  end

  private

  def album_params
    params.require(:album).permit(:name, :artist, :description)
  end

end
