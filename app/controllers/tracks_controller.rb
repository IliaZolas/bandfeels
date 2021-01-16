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
        raise
    end

    def update
    end

    def destroy
        @track = Track.find(params[:id])
        # @album_id = Album.find(params[:id])
        @album = Album.find(params[:album_id])
        # @track.album = @album
        @track.destroy
        redirect_to album_path(@album)
    end

    # def playtrack
    # @playtrack = Track.find(params[:id])
    #     # if @playtrack.save!
    #     #     send_file @playtrack.path
    #     # end
    # end

    private

    def track_params
        params.require(:track).permit(:title, :description, :photo, playlist_tracks_attributes: [:id, :track_id, :playlist_id, :_destroy])
    end

end
