class LikesController < ApplicationController
    before_action :find_track, only: [:create]

    def index
    end

    def show
        @tracks = Like.all
    end


    def new
    @liked = Like.new
    end

    def create
        if already_liked?
            flash[:notice] = "You can't like more than once"
        else
        @track.likes.create(user_id: current_user.id,track_id:params[:track_id])
        end
        redirect_to station_index_path
    end

    def destroy
    end


    def userlikes
        @tracks = current_user.liked_tracks
    end
    
    private

    def find_track
        @track = Track.find(params[:track_id])
    end

    def already_liked?
        Like.where(user_id: current_user.id, track_id:
        params[:track_id]).exists?
    end


end
