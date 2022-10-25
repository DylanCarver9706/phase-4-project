class SessionsController < ApplicationController
    def create
        user = User.find_by(name:params[:name])
        if user&.authenticate(params[:password])
            render json: user, sttatus: :ok
        else
            render json: { errors: "Invalid Email or Password"}
        end
    end
end
