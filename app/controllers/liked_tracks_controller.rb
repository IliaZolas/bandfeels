class LikedTracksController < ApplicationController

    def create
    @liked_track = LikedTrack.new(liked_track_params)
        if @liked_track.save!
            redirect_to station_index_path
        else
            render 'new'
        end
    end

    private

    def liked_track_params
        params.require(:liked_track).permit(:track_id, :like_id)
    end

end
