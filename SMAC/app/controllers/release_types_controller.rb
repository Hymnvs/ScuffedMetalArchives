class ReleaseTypesController < ApplicationController

  # finds all the release types in the database
  # renders the index view by default
  def index
    @releaseTypes = ReleaseType.all
  end

  # this will find the requested object
  # renders the show view by default
  def show
    @releaseType = ReleaseType.find(params[:id])
  end

  # this will create an empty release type object
  # renders the new view by default
  def new
    @releaseType = ReleaseType.new
  end

  # this will find the requested object
  # renders the edit view by default
  def edit
    @releaseType = ReleaseType.find(params[:id])
  end

  # this takes the object created in `new` and tries to save it to the database
  def create
    @releaseType = ReleaseType.new(release_type_params)
    # validate the data that has been passed, this is linked to the objects model where the required fields are defined
    if @releaseType.save
      redirect_to release_types_path
    else
      # overwrite the default render
      render 'new'
    end
  end

  # this tries to update the selected object in the database
  def update
    @releaseType = ReleaseType.find(params[:id])
    # validate the data that has been passed, this is linked to the objects model where the required fields are defined
    if @releaseType.update(release_type_params)
      redirect_to edit_release_type_path(@releaseType)
    else
      # overwrite the default render
      render 'edit'
    end
  end

  # this will remove the selected object from the database
  def destroy
    @releaseType = ReleaseType.find(params[:id])
    @releaseType.destroy

    redirect_to release_types_path
  end

  private
    # define the objects parameters here to unclutter the code
    def release_type_params
      params.require(:release_type).permit(:name)
    end

end
