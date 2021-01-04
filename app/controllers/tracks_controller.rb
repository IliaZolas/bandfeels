class TracksController < ApplicationController

    def index
        @track = Track.all
    end

    def show
        @track = Track.find(params[:id])
    end
    
    def new
        @track = Track.new
    end

    def create
        @track = Track.new(track_params)
        @track.user = current_user
        if @track.save!
            redirect_to album_tracks_path(@track)
        else
            render 'new'
        end
    end

    def update
    end

    def destroy
    end

    private

    def track_params
        params.require(:track).permit(:title, :description, :photo)
    end

end
