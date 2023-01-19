class ArticlesController < ApplicationController
  def index 
    @title    = 'Articles'
    @articles = Article.order("published_at").reverse
  end

  def show
    @article     = Article.find_by(slug: params[:id])
    @title       = @article.title
  end
end
