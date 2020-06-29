class WeblinksController < ApplicationController

  # this will create an empty weblink object
  # by first finding the associated band object
  # renders the new view by default
  def new
    @band = Band.find(params[:band_id])
    @weblink = Weblink.new
  end

  # this will find the associated band object
  # and then the requested object
  # renders the edit view by default
  def edit
    @band = Band.find(params[:band_id])
    @weblink = Weblink.find(params[:id])
  end

  # this takes the object created in `new` and tries to save it to the database
  def create
    @band = Band.find(params[:band_id])
    @weblink = @band.weblinks.create(weblink_params)
    # validate the data that has been passed, this is linked to the objects model where the required fields are defined
    if @weblink.save
      redirect_to bands_path
    else
      # overwrite the default render
      render "new"
    end
  end

  # this tries to update the selected object in the database
  def update
    @band = Band.find(params[:band_id])
    @weblink = Weblink.find(params[:id])
    # validate the data that has been passed, this is linked to the objects model where the required fields are defined
    if @weblink.update(weblink_params)
      redirect_to band_path(@band)
    else
      # overwrite the default render
      render "edit"
    end
  end

  # this will remove the selected object from the database
  def destroy
    @band = Band.find(params[:band_id])
    @weblink = Weblink.find(params[:id])
    @weblink.destroy

    redirect_to band_path(@band)
  end

  private
    # define the objects parameters here to unclutter the code
    def weblink_params
      params.require(:weblink).permit(:title, :url)
    end

end
