class PlaylistsController < ApplicationController

    def index
        @playlist = Playlist.where(user_id: current_user)
    end

    def show
        @playlist = Playlist.find(params[:id])
        @tracks = @playlist.tracks
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
        params.require(:playlist).permit(:playlist_title, :playlist_description, :photo)
    end

end