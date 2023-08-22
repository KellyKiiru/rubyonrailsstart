class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new

  def create
      @article = Article.new(title:"...", body:"...")

      if @article.save()
        redirect_to @article
      else
        render :new, status: unprocessable entity
      end
    end 
end
