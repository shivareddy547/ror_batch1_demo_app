class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new

    @book = Book.new
  end

  def edit
  end

  def delete
  end

  def update
  end
end
