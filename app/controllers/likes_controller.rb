class LikesController < ApplicationController
    before_action :find_track, only: [:create]

    def index
        # @tracks = Like.all
        # @likes = 
        # @liked = @tracks.likes
        # @user = User.where(user_id: current_user)
        # @user = User.find(params[:id])
        # @tracks = Like.where(user_id: current_user)
    end

    def show
        # @liked = Like.find(params[:id])
        # @tracks = @liked.tracks
        # @user = User.find(params[:id])
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
        # @likedtrack = Like.where(user_id: current_user)
        @tracks = current_user.liked_tracks
    end
    
    private

    # def liked_track_params
    #     params.require(:like).permit(:track_id, :user_id)
    # end

    def find_track
        @track = Track.find(params[:track_id])
    end

    def already_liked?
        Like.where(user_id: current_user.id, track_id:
        params[:track_id]).exists?
    end


end
