class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]

  def index
    @message = "Vous n'avez pas encore créé de bookmark." if @bookmarks.count == 0 || @bookmarks.nil?
    if params[:category]
      @bookmarks = policy_scope(Bookmark).where(category: params[:category]).order(created_at: :desc)
    else
      @bookmarks = policy_scope(Bookmark).order(created_at: :desc)
    end
    @categories = policy_scope(Bookmark).map { |bookmark| bookmark.category if bookmark.category }
  end

  def new
    @bookmark = Bookmark.new
    @bookmark.user = current_user
    authorize @bookmark
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.user = current_user
    authorize @bookmark

    if @bookmark.save
      redirect_to bookmarks_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @bookmark.update(bookmark_params)

    if @bookmark.save
      redirect_to bookmarks_path
    else
      render :edit
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to bookmarks_path
  end

  private

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
    authorize @bookmark
  end

  def bookmark_params
    params.require(:bookmark).permit(:description, :title, :url, :category)
  end
end
