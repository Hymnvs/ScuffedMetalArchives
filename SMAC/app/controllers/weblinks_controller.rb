class WeblinksController < ApplicationController

    def new
        @band = Band.find(params[:band_id])
        @weblink = Weblink.new
    end

    def edit
        @band = Band.find(params[:band_id])
        @weblink = Weblink.find(params[:id])
    end

    def create
        @band = Band.find(params[:band_id])
        @weblink = @band.weblinks.create(weblink_params)

        if @weblink.save
            redirect_to band_weblink_path(@band, @weblink)
        else
            render "new"
        end
    end

    def update
        @band = Band.find(params[:band_id])
        @weblink = Weblink.find(params[:id])

        if @weblink.update(weblink_params)
            <! fix me >
        else

        end
    end

    private
        def weblink_params
            params.require(:weblink).permit(:title, :url)
        end

end
