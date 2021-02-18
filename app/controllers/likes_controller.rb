class LikesController < ApplicationController

    def index
        # @track = Like.all
        # @user = User.where(user_id: current_user)
        @user = User.find(params[:id])
        @tracks = Like.where(user_id: current_user)
    end

    def show
        # @liked = Like.find(params[:id])
        # @tracks = @liked.track
        # @user = User.find(params[:id])
        @tracks = Like.all
    end


    def new
    @liked = Like.new
    end

    def create
    @liked_track = Like.new(liked_track_params)
        if @liked_track.save!
            redirect_to station_index_path
        else
            render 'new'
        end
    end

    def destroy
    end

    private

    def liked_track_params
        params.require(:like).permit(:track_id, :user_id)
    end


end
