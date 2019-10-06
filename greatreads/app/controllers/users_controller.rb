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

end 