class UsersController < ApplicationController

    get '/signup' do 
        if logged_in? != true
            erb :'Users/signup'
        else 
            redirect "/users/#{current_user.id}"
        end 
    end

    #post from signup
    post '/users' do 
        @user = User.new(params)

        if @user.save
            session[:user_id] = @user.id
            redirect "/users/#{@user.id}"
        else
            redirect '/signup'
        end
    end

    get '/users/:id' do 
        @user = User.find_by_id(params[:id])
        @books = @user.books
        erb :'/Users/user_books'
    end 

end 