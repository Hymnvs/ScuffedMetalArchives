class ArtistsController < ApplicationController

  # finds all the artists in the database
  # renders the index view by default
  def index
    @artists = Artist.all
  end

  # this will find the requested object
  # renders the show view by default
  def show
    @artist = Artist.find(params[:id])
  end

  # this will create an empty artist object
  # renders the new view by default
  def new
    @artist = Artist.new
  end

  # this will find the requested object
  # renders the edit view by default
  def edit
    @artist = Artist.find(params[:id])
  end

  # this takes the object created in `new` and tries to save it to the database
  def create
    @artist = Artist.new(artist_params)
    # validate the data that has been passed, this is linked to the objects model where the required fields are defined
    if @artist.save
      redirect_to artists_path
    else
      # overwrite the default render
    render 'new'
    end
  end

  # this tries to update the selected object in the database
  def update
    @artist = Artist.find(params[:id])
    # validate the data that has been passed, this is linked to the objects model where the required fields are defined
    if @artist.update(artist_params)
      redirect_to edit_artist_path(@artist)
    else
      # overwrite the default render
      render 'edit'
    end
  end

  # this will remove the selected object from the database
  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    redirect_to artists_path
  end

  private
    # define the objects parameters here to unclutter the code
    # selfie is a picture and is part of the ActiveStorage, not the Artist model directly
    def artist_params
      params.require(:artist).permit(:alias, :real_name, :age, :place_of_origin, :gender, :info, :selfie, release_ids: [])
    end

end
