class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index, :search, :rakuten]
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_action :set_index, only: [:edit, :update, :destroy]

  def index
    @books = Book.all.order(created_at: :DESC)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
    render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @book.comments.includes(:user)
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to book_path
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to root_path
  end

  def search
    @books = Book.search(params[:keyword])
  end

  def rakuten
    if params[:keyword]
      @items = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword])
    end
  end

  private

  def book_params
    params.require(:book).permit(:image, :title, :catch_copy, :description, :genre_id).merge(user_id: current_user.id)
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def set_index
    redirect_to action: :index unless @book.user_id == current_user.id
  end
end
