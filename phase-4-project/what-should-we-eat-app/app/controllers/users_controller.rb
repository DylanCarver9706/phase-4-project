class UsersController < ApplicationController
    # skip_before_action 

    def show 
        user = User.find_by(name:params[:name])
        render json: user, status: :ok
    end 

    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        head :no_content 
    end
    
    private 

    def user_params
        params.permit(:full_name, :email, :password)
    end 
end
