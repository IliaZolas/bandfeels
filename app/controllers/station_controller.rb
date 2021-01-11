class StationController < ApplicationController
    def index
        @track = Track.all
    end

        private

    def track_params
        params.require(:track).permit(:title, :description, :photo, :track)
    end
end
