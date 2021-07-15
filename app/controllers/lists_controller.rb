class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
    @bookmark.list = @list


  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @lists = List.all
    if @list.save
      redirect_to lists_path, notice: 'Your List is created.'
    else
      render :index
    end
  end

  private
  def list_params
    params.require(:list).permit(:name, :image_url)
  end

end
