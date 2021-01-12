class PlaylistsController < ApplicationController

    def index
        @playlist = Playlist.all
    end

    def show
    end

    def create
    end

    def destroy
    end

    def update
    end

            private

    def playlist_params
        params.require(:playlist).permit(:playlisty_title, :playlist_description, :photo)
    end

end
