class BooksController < ApplicationController

    get '/books' do 
        erb :'Books/user_books'
    end 

    get '/books/new' do 
        erb :"Books/create"
    end 
    
    get 'books/:id' do 
        erb :'Books/show'
    end 

    get '/books/:id/edit' do 
        erb :"Books/edit"
    end 


    
end 