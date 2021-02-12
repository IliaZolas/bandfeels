class LikedTracksController < ApplicationController

    def create
    @liked = LikedTrack.new(liked_track_params)
        if @liked.save!
            redirect_to likes_path
        else
            render 'new'
        end
    end

    private

    def liked_track_params
        params.require(:liked_track).permit(:track_id, :like_id)
    end

end
