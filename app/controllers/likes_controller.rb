class LikesController < ApplicationController
    before_action :find_track

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
        if already_liked?
            flash[:notice] = "You can't like more than once"
        else
        @track.likes.create(user_id: current_user.id)
        end
        redirect_to station_index_path
    end
    # @liked_track = Like.new(liked_track_params)
    #     if @liked_track.save!
    #         redirect_to station_index_path
    #     else
    #         render 'new'
    #     end
    # end

    def destroy
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
