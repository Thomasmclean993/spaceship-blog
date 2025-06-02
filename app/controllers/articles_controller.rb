class ArticlesController < ApplicationController
  def index
    @articles = Article.All
  end

  def show
  end
end
