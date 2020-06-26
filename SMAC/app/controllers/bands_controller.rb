class BandsController < ApplicationController

    def index
        @bands = Band.all
    end

    def show
        @band = Band.find(params[:id])
    end

    def new
        @band = Band.new
    end

    def edit
        @band = Band.find(params[:id])
    end

    def create
        @band = Band.new(band_params)

        if @band.save
            redirect_to edit_band_path(@band)
        else
            render 'new'
        end
    end

    def update
        @band = Band.find(params[:id])

        if @band.update(band_params)
            redirect_to edit_band_path(@band)
        else
            render 'edit'
        end
    end

    def destroy
        @band = Band.find(params[:id])
        @band.destroy

        redirect_to bands_path
    end

    private
        def band_params
            params.require(:band).permit(:name, :country, :location, :formation_date, band_pictures: [], band_logos: [], genre_ids: [])
        end

end
