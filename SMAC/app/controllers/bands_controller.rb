class BandsController < ApplicationController

  # finds all the bands in the database
  # renders the index view by default
  def index
    @bands = Band.all
  end

  # this will find the requested object
  # renders the show view by default
  def show
    @band = Band.find(params[:id])
  end

  # this will create an empty band object
  # renders the new view by default
  def new
    @band = Band.new
  end

  def list
    @bands = Band.where('substr(name, 1, 1) = ?', params[:letter])
  end

  # this will find the requested object
  # renders the edit view by default
  def edit
    @band = Band.find(params[:id])
  end

  # this takes the object created in `new` and tries to save it to the database
  def create
    @band = Band.new(band_params)
    # validate the data that has been passed, this is linked to the objects model where the required fields are defined
    if @band.save
      redirect_to edit_band_path(@band)
    else
      # overwrite the default render
      render 'new'
    end
  end

  # this tries to update the selected object in the database
  def update
    @band = Band.find(params[:id])
    # validate the data that has been passed, this is linked to the objects model where the required fields are defined
    if @band.update(band_params)
      redirect_to edit_band_path(@band)
    else
      # overwrite the default render
      render 'edit'
    end
  end

  # this will remove the selected object from the database
  def destroy
    @band = Band.find(params[:id])
    @band.destroy

    redirect_to bands_path
  end

  private
		# define the objects parameters here to unclutter the code, the [] parameters are outside of this object but belong to it
    def band_params
      params.require(:band).permit(:name, :country, :location, :formation_date, band_pictures: [], band_logos: [], genre_ids: [], artist_ids: [])
    end

end
