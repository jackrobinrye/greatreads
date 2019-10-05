class BooksController < ApplicationController

    get '/books' do 
        erb :'Books/user_books'
    end 
    
end 