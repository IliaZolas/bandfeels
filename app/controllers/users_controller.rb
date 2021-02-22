class UsersController < ApplicationController
    enum role: {artist: 0, listener: 1}

    def index
        @user = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def update
    end

    private

    def user_params
        params.require(:user).permit(:fname, :lname, :photo)
    end

end
