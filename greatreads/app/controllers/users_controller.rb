class UsersController < ApplicationController

    get '/signup' do 
        erb :'Users/signup'
    end

    post '/users' do 
        @user = User.new(params)

        if @user.save
            session[:user_id] = @user.id
            redirect "/posts"
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