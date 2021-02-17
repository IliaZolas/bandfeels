class StationController < ApplicationController
    def index
        # @track = Track.all
        if params[:query].present?
            @track = Track.where("tag ILIKE ?", "%#{params[:query]}%")
        else
            @track = Track.all
        end
        @playlist_track = PlaylistTrack.new
        @liked_track = Like.new
    end

    def show
        # @playlist = Playlist.find(params[:playlist_id])
    end

        private

    def track_params
        params.require(:track).permit(:title, :description, :tag, :photo, :track)
    end
end
