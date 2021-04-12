class TracksController < ApplicationController
    before_action :check_user, only: [:new, :create, :destroy]

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
        @track = Track.find(params[:id])
        @album = Album.find(params[:album_id])
        @track.destroy
        redirect_to album_path(@album)
    end
    
    private

    def track_params
        params.require(:track).permit(:title, :description, :tag, :photo, :track, playlist_tracks_attributes: [:id, :track_id, :playlist_id, :_destroy])
    end

    def check_user
        unless current_user.role == "Artist"
        redirect_to station_index_path
        end
    end

end

