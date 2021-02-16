class PlaylistTracksController < ApplicationController
    
    def create
    @playlist_track = PlaylistTrack.new(playlist_track_params)
        if @playlist_track.save!
            redirect_to station_index_path
        else
            render 'new'
        end
    end

    private

    def playlist_track_params
        params.require(:playlist_track).permit(:track_id, :playlist_id)
    end


end
