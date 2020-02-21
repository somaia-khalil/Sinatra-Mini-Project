class UserController < ApplicationController 
    set :views, "app/views/users"


    get "/users" do 
        @users = User.all 
        erb :index
    end

    get "/users/new" do 

        erb :new
    end

    get "/users/:id" do
        @user = current_user
        erb :show

    end

    get "/users/:id/edit" do 
        @user = current_user
        erb :edit
    end

    post "/users" do 
        # binding.pry
        @user = User.create(params[:user])
        redirect "/users/#{@user.id}"
    end

    patch "/users/:id" do
        @user = current_user
        @user.update(params[:user])
        redirect "/users/#{@user.id}"
    end

    delete "/users/:id" do
        @user = current_user
        @user.destroy
        redirect "/users"
    end
    
    
    
    
    def current_user
        User.find(params[:id])
    end
end