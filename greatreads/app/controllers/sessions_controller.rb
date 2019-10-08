class SessionsController < ApplicationController

    get '/login' do
        if logged_in? == false 
            erb :'sessions/login'
        else 
            redirect "/users/#{current_user.id}"
        end 
    end

    #post from login
    post '/sessions' do
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect "users/#{user.id}"
        else
            redirect '/login'
        end
    end

    get '/logout' do
        session.clear
        redirect '/login'
    end
    
end 