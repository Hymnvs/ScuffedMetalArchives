class ReleasesController < ApplicationController

  # finds all the releases in the database
  # renders the index view by default
  def index
    @releases = Release.all
  end

  # this will find the requested object
  # renders the show view by default
  def show
    @release = Release.find(params[:id])
  end

  # this will create an empty release object
  # renders the new view by default
  def new
    @release = Release.new
  end

  # this will find the requested object
  # renders the edit view by default
  def edit
    @release = Release.find(params[:id])
  end

  # this takes the object created in `new` and tries to save it to the database
  def create
    @release = Release.new(release_params)
    # validate the data that has been passed, this is linked to the objects model where the required fields are defined
    if @release.save
      redirect_to releases_path
    else
      # overwrite the default render
      render 'new'
    end
  end

  # this tries to update the selected object in the database
  def update
    @release = Release.find(params[:id])
    # validate the data that has been passed, this is linked to the objects model where the required fields are defined
    if @release.update(release_params)
      redirect_to edit_release_path(@release)
    else
      # overwrite the default render
      render 'edit'
    end
  end

  # this will remove the selected object from the database
  def destroy
    @release = Release.find(params[:id])
    @release.destroy

    redirect_to releases_path
  end

  private
   # define the objects parameters here to unclutter the code
   # cover is not part of the actual model, it is an attached image handled by the ActiveStorage
    def release_params
      params.require(:release).permit(:title, :release_type_id, :release_date, :band_id, :cover)
    end

end
