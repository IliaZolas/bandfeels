class AlbumsController < ApplicationController

    def index
        @album = Album.all
    end

    def show
        @album = Album.find(params[:id])
    end
    
    def new
        @album = Album.new
    end

    def create
        @album = Album.new(album_params)
        @album.user = current_user
        if @album.save
            redirect_to albums_path(@album)
        else
            render 'new'
        end
    end

    def update
    end

    def destroy
    end

    private

    def album_params
        params.require(:album).permit(:title, :description, :photo, :tag)
    end
end
