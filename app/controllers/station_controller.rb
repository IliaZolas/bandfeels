class StationController < ApplicationController
    def index
        # @track = Track.all
        if params[:query].present?
            @track = Track.where("title ILIKE ?", "%#{params[:query]}%")
        else
            @track = Track.all
        end
        @playlist = Playlist.new
    end

    def show
        # @playlist = Playlist.find(params[:playlist_id])
    end

        private

    def track_params
        params.require(:track).permit(:title, :description, :photo, :track)
    end
end
