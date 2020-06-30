class GenresController < ApplicationController

  # finds all the genres in the database
  # renders the index view by default
  def index
    @genres = Genre.all
  end

  # this will find the requested object
  # renders the show view by default
  def show
    @genre = Genre.find(params[:id])
  end

  # this will create an empty genre object
  # renders the new view by default
  def new
    @genre = Genre.new
  end

  # this will find the requested object
  # renders the edit view by default
  def edit
    @genre = Genre.find(params[:id])
  end

  # this takes the object created in `new` and tries to save it to the database
  def create
    @genre = Genre.new(genre_params)
    # validate the data that has been passed, this is linked to the objects model where the required fields are defined
    if @genre.save
      redirect_to genres_path
    else
      # overwrite the default render
      render 'new'
    end
  end

  # this tries to update the selected object in the database
  def update
    @genre = Genre.find(params[:id])
    # validate the data that has been passed, this is linked to the objects model where the required fields are defined
    if @genre.update(genre_params)
      redirect_to edit_genre_path(@genre)
    else
      # overwrite the default render
      render 'edit'
    end
  end

  # this will remove the selected object from the database
  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy

    redirect_to genres_path
  end

  private
    # define the objects parameters here to unclutter the code
    def genre_params
      params.require(:genre).permit(:name)
    end

end
