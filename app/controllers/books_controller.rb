class BooksController < ApplicationController
  before_action :authenticate_user!
  def index
    @books = Book.all
  end

  def new

    @book = Book.new
  end

  def create

    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: "Book was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end

  end

  def show


    @book = Book.find(params[:id])

  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: "Book was successfully destroyed." }

    end
  end

  def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: "Book was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }

      end
    end


  end


private

  def book_params
    params.require(:book).permit(:name, :description, :author, :price,:subject_id)
  end

end
