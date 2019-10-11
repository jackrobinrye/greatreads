class BooksController < ApplicationController

    get '/books' do 
        @books = Book.all
        erb :'book_index'
    end 

    get '/books/new' do 
        erb :"Books/new"
    end 

    post '/books' do 
        @book = current_user.books.build(params)
        if @book.save
            redirect "/books/#{@book.id}"
        else
            redirect '/books/new'
        end
    end 
    
    get '/books/:id' do 
        @book = Book.find_by_id(params[:id])
        erb :'Books/show'
    end 

    get '/books/:id/edit' do 
        book_user = Book.find_by_id(params[:id]).user
        if book_user.id == current_user.id
            @book = Book.find_by_id(params[:id])
            erb :'Books/edit'
        else 
            redirect "/books"
        end
    end 

    patch "/books/:id" do 
        book_user = Book.find_by_id(params[:id]).user
        if book_user.id == current_user.id
            @book = Book.find_by_id(params[:id])
            params.delete("_method")
            if @book.update(params)
                redirect "/books/#{@book.id}"
            else
                redirect "/books/#{@book.id}/edit"
            end
        else
            erb :"/books/#{params[:id]}"
        end
    end

    delete '/books/:id' do
        book_user = Book.find_by_id(params[:id]).user
        if book_user.id == current_user.id
            Book.destroy(params[:id])
            redirect :'/books'
        else
            redirect :'/books'
        end
    end
    
end 