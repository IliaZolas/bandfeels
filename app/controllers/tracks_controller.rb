class TracksController < ApplicationController

    def index
        @track = Track.all
    end

    def show
        @track = Track.find(params[:id])
    end
    
    def new
        @track = Track.new
        @album = Album.find(params[:album_id])
    end

    def create
        @track = Track.new(track_params)
        @track.user = current_user
        @album = Album.find(params[:album_id])
        @track.album = @album
        if @track.save!
            redirect_to album_path(@album)
            else
            render 'new'
        end
    end

    def update
    end

    def destroy
    end

    def playtrack
    @playtrack = Track.find(params[:id])
        # if @playtrack.save!
        #     send_file @playtrack.path
        # end
    end

    private

    def track_params
        params.require(:track).permit(:title, :description, :photo, :track)
    end

end
