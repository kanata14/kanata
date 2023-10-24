class MangasController < ApplicationController
  
  before_action :authenticate_user!, only: [:new, :create]
  def top
    
  end
  def index
    @mangas = Manga.all
    @rank_mangas = Manga.all.sort {|a,b| b.liked_users.count <=> a.liked_users.count}
  end
  def new
    @manga = Manga.new
  end

  def create
    manga = Manga.new(manga_params)
    manga.user_id = current_user.id
    if manga.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @manga = Manga.find(params[:id])
  end

  def edit
    @manga = Manga.find(params[:id])
  end

  def update
    manga = Manga.find(params[:id])
    if manga.update(manga_params)
      redirect_to :action => "show", :id => manga.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    manga = Manga.find(params[:id])
    manga.destroy
    redirect_to action: :index
  end

  private
  def manga_params
    params.require(:manga).permit(:title, :author, :arasuzi, :kansou, :image, :overall)
  end
end
