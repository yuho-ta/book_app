class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy ]
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    
  end

  def new
    @book = Book.new
  end

  def edit
   
  end

  def create
    @book = Book.new(book_params)
      if @book.save
        flash[:notice]="Book was successfully created."
        redirect_to book_path(@book)
      else
        @books=Book.all
        render 'index'
      end
  end

  def update
    if @book.update(book_params)
        flash[:notice]="Book was successfully updated."
        redirect_to book_path(@book)
    else
        render 'edit'
    end
  end

  def destroy
    @book.destroy
    flash[:notice]="Book was successfully destroyed."
    redirect_to books_path
  end




 private
    def set_book
        @book = Book.find(params[:id])
    end
    def book_params
        params.require(:book).permit(:title, :body)
    end
    
end