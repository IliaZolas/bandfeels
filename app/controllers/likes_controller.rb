class LikesController < ApplicationController

    def index
        @tracks = Like.where(user_id: current_user)
        @liked = Like.find(params[:id])
    end
    
    def show
        @liked = Like.find(params[:id])
        @tracks = @liked.tracks
    end

    def new
        @liked = Like.new
    end

    def create
        @liked = Like.new(track_params)
        @liked.user = current_user
        if @liked.save!
            redirect_to likes_path(@liked)
        else
            render 'new'
        end
    end

    private

    def track_params
        params.require(:liked_track).permit(:track_id, :like_id)
    end


end
