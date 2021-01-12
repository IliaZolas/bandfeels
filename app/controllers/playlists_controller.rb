class PlaylistsController < ApplicationController

    def index
        @playlist = Playlist.all
    end

    def show
        @playlist = Playlist.find(params[:id])
        @track = Track.where(playlist_id: params[:id])
    end

    def new
        @playlist = Playlist.new
    end

    def create
        @playlist = Playlist.new(playlist_params)
        @playlist.user = current_user
        if @playlist.save!
            redirect_to playlists_path(@playlist)
        else
            render 'new'
        end
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
